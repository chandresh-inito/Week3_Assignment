
def char_to_number(idx_char)
    
    temp = 0
    itr = 0
    while itr<=idx_char do 
        temp = temp*2 + itr+1
        itr+=1
    end 
    temp 
end



# p char_to_number


def letter(name)
    # p "letter is calleld"
    if name.length==1 and name>="A" and name<="Z" 
        true    
   else
        false
   end 

end

def words(name)
    # p "words is called"
    temp = name.split("")
    # p temp
    f = true
    temp.each do |ch|
        if ch<"A" or ch>"Z" 
            f = false
            break
        end
    end
    f
end

def num(name)
    # p "num is called"
    f = true
    name.split("").each do |ch|
        if ch<"0" or ch>"9" 
            f = false
            break
        end
    end
    f
end


def type_return(name)
    # p "type return call"
    if letter(name)==true
        "lett"
    elsif words(name)==true
        "word"
    elsif num(name) == true
        "numb"
    else  
        "garb"
    end

end








inp = gets.chomp
inp.upcase!

if type_return(inp) == "lett" 

    x =  inp.sum - "A".sum
    p char_to_number(x)

elsif type_return(inp)=="word"
    
    temp = inp.split("")
    t = 0 
    temp.each do |ch|
        x = ch.sum - "A".sum
        t+=char_to_number(x)
    end
    p t

elsif type_return(inp)=="numb"
    
    temp = inp.to_i
    # p temp
    # p temp.class
    
    ans = ""

    while temp!=0

        i = 25

        while char_to_number(i)>temp
            i-=1
        end
        

        num_of_times_of_char = temp/char_to_number(i)
        temp = temp%char_to_number(i)
        ascii_code_of_char = 65+i
        ch = ascii_code_of_char.chr*num_of_times_of_char

        ans << ch

    end

    p ans

elsif type_return(inp)=="garb"
    
    p " INVALID INPUT !! "

end





