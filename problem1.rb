
str = gets.chomp
str.upcase!


p str
str_arr = str.split("")
# p str_arr

ans = 0
sol = "N"
row = 0
col = 0
prev_face = "N"

str_arr.each do |ch| 

    #if rover move downward
    if ch=="D" 
        
        if prev_face=="N"
            row+=1
            sol << "S"
            prev_face = "S"
        elsif prev_face=="S"
            row-=1
            sol << "N"
            prev_face = "N"
        elsif prev_face=="E"
            col-=1
            sol <<"W"
            prev_face = "W"
        else prev_face=="W"
            col+=1
            sol <<"E"
            prev_face = "E"
        end
        

        if row>=10 || row < 0 || col >=10 || col < 0  
            ans = -1
            break
        end
        
    #if rover move upward
    elsif ch=="U" 
        
        if prev_face=="N"
            row-=1
            sol << "N"
            prev_face = "N"
        elsif prev_face=="S"
            row+=1
            sol << "S"
            prev_face = "S"
        elsif prev_face=="E"
            col+=1
            sol <<"E"
            prev_face = "E"
        else prev_face=="W"
            col-=1
            sol <<"W"
            prev_face = "W"
        end
    

        if row>=10 || row < 0 || col >=10 || col < 0  
            ans = -1
            break
        end

    #if rover move leftward
    elsif ch=="L"

        if prev_face=="N"
            col-=1
            sol << "W"
            prev_face = "W"
        elsif prev_face=="S"
            col+=1
            sol << "E"
            prev_face = "E"
        elsif prev_face=="E"
            row-=1
            sol <<"N"
            prev_face = "N"
        else prev_face=="W"
            row+=1
            sol <<"S"
            prev_face = "S"
        end


        if row>=10 || row < 0 || col >=10 || col < 0  
            ans = -1
            break
        end

    #if rover move rightward
    elsif ch=="R"

        if prev_face=="N"
            col+=1
            sol << "E"
            prev_face = "E"
        elsif prev_face=="S"
            col-=1
            sol << "W"
            prev_face = "W"
        elsif prev_face=="E"
            row+=1
            sol <<"S"
            prev_face = "S"
        else prev_face=="W"
            row-=1
            sol <<"N"
            prev_face = "N"
        end


        if row>=10 || row < 0 || col >=10 || col < 0  
            ans = -1
            break
        end


    end 

end

if ans==-1 
    p ans
elsif 
    p sol
end


# class Solution
    
#     def initialize
#     end

    
#     def get_path(str)
        
#         str_arr = str.split("")
#         # p str_arr

#         ans = 0
#         sol = "N"
#         row = 0
#         col = 0
#         prev_face = "N"

#         str_arr.each do |ch| 

#         #if rover move downward
#         if ch=="D" 
        
#             if prev_face=="N"
#                 row+=1
#                 sol << "S"
#                 prev_face = "S"
#             elsif prev_face=="S"
#                 row-=1
#                 sol << "N"
#                 prev_face = "N"
#             elsif prev_face=="E"
#                 col-=1
#                 sol <<"W"
#                 prev_face = "W"
#             else prev_face=="W"
#                 col+=1
#                 sol <<"E"
#                 prev_face = "E"
#             end
        

#             if row>=10 || row < 0 || col >=10 || col < 0  
#                 ans = -1
#                 break
#             end
        
#         #if rover move upward
#         elsif ch=="U" 
        
#             if prev_face=="N"
#                 row-=1
#                 sol << "N"
#                 prev_face = "N"
#             elsif prev_face=="S"
#                 row+=1
#                 sol << "S"
#                 prev_face = "S"
#             elsif prev_face=="E"
#                 col+=1
#                 sol <<"E"
#                 prev_face = "E"
#             else prev_face=="W"
#                 col-=1
#                 sol <<"W"
#                 prev_face = "W"
#             end
    

#             if row>=10 || row < 0 || col >=10 || col < 0  
#                 ans = -1
#                 break
#             end

#         #if rover move leftward
#         elsif ch=="L"

#             if prev_face=="N"
#                 col-=1
#                 sol << "W"
#                 prev_face = "W"
#             elsif prev_face=="S"
#                 col+=1
#                 sol << "E"
#                 prev_face = "E"
#             elsif prev_face=="E"
#                 row-=1
#                 sol <<"N"
#                 prev_face = "N"
#             else prev_face=="W"
#                 row+=1
#                 sol <<"S"
#                 prev_face = "S"
#             end


#             if row>=10 || row < 0 || col >=10 || col < 0  
#                 ans = -1
#                 break
#             end

#         #if rover move rightward
#         elsif ch=="R"

#             if prev_face=="N"
#                 col+=1
#                 sol << "E"
#                 prev_face = "E"
#             elsif prev_face=="S"
#                 col-=1
#                 sol << "W"
#                 prev_face = "W"
#             elsif prev_face=="E"
#                 row+=1
#                 sol <<"S"
#                 prev_face = "S"
#             else prev_face=="W"
#                 row-=1
#                 sol <<"N"
#                 prev_face = "N"
#             end


#             if row>=10 || row < 0 || col >=10 || col < 0  
#                 ans = -1
#                 break
#             end


#         end 

#     end

#     if ans==-1 
#         p ans
#     elsif 
#         p sol
#     end

# end

# str = gets.chomp
# str.upcase!

# object1 = solution.new
# object1.get_path(str)