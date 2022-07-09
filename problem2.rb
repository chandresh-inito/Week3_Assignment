
arr = Array.new

arr[0] = 1
i = 1; 
while i<26 do 
    arr[i] = arr[i-1]*2 + i+1 
    i+=1
end

# p arr


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
    p arr[x]

elsif type_return(inp)=="word"
    
    temp = inp.split("")
    t = 0 
    temp.each do |ch|
        x = ch.sum - "A".sum
        t+=arr[x]
    end
    p t

elsif type_return(inp)=="numb"
    
    temp = inp.to_i
    # p temp
    # p temp.class
    
    ans = ""

    while temp!=0

        i = 25

        while arr[i]>temp
            i-=1
        end
        
        temp-=arr[i]
        
        x = 65+i
        c = x.chr

        ans << c

    end

    p ans

elsif type_return(inp)=="garb"
    
    p " INVALID INPUT !! "

end





