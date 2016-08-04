
def path_sum
    matrix = []
    File.readlines(File.dirname(__FILE__) + "/p081_matrix.txt").each { |line| matrix.push(line.split(",").map(&:to_i)) }
    sum = 0
    matrix[0].map! { |x| sum += x }
    i = 1
    while i < 80
        matrix[i][0] += matrix[i - 1][0]
        j = 1
        while j < 80
            matrix[i][j] += (matrix[i][j - 1] > matrix[i - 1][j] ? matrix[i - 1][j] : matrix[i][j - 1])
            j+=1
        end
        i+=1
    end
    matrix[79][79]
end

p path_sum
