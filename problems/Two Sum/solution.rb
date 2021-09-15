# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    i = 0
    j = 1
    while(i < nums.size) do
        while(j < nums.size) do
            if nums[i] + nums[j] == target
                return [i,j]
            end
            j += 1
        end
        i += 1
        j = i + 1
    end
    
end
