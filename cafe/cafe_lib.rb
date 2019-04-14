#Greeting message for customer
GREETINGS = "What would you like to order (latte, scone, tea)? Type (q)uit to quit."
QUANTITY = "How many?"
ERROR_MSG = "I'm sorry, we don't serve that. Would you like latte, scone, or tea? Type (q)uit to quit."
MORE_THING = "Anything else? Type (q)uit to quit."
LATTE = 0
SCONE = 1
TEA = 2

#create a class for all items in the cafe
class Items
    #initalize the stock number, price and cost for items
    attr_accessor :item
    def initialize(latte, scone, tea)
        @item = Array.new
        @item << {num: latte, price: 4, cost: 2}
        @item << {num: scone, price: 5, cost: 3}
        @item << {num: tea, price: 3, cost: 0.5}
        
    end
end

#check if user entered quit message
#return true on success
#return false for non-exit message
def check_quit(cmd)
    if cmd == "q" || cmd == "quit"
        puts "Thank you for your coming."
        puts "Hope to see you again soon!"
        return true
    end
    return false
end

#add more units for a particular item
#return false if user entered invalid message
def add_order(order, num, items)
    case order
    
    when "latte"
        items.item[LATTE][:num] += num
    when "scone"
        items.item[SCONE][:num] += num
    when "tea"
        items.item[TEA][:num] += num
    else
        puts ERROR_MSG
        return false
    end
    return true
end

#check error order
#return true if user entered invalid message
#return false if user entered valid message
def check_err_order(order)
    case order
    when "latte"
    when "scone"
    when "tea"
    else
        puts ERROR_MSG
        return true
    end
    return false
end

#check if customer placed any orders
#return true if there is any orders
# return false if any orders have been made
def check_empty_order(items)
    flag = items.item.length
    items.item.each do |h|
        (flag -= 1) if h[:num] == 0
    end
    return true if flag == 0
    return false
end

#check the order placed by customer
#return true if user entered quit message
def make_order(items)
    puts GREETINGS
    loop do
        get_order = gets.chomp.downcase
        #quit method if user entered quit message
        return true if check_quit(get_order)
        #if user entered invalid message, skip to next iteration
        next if check_err_order(get_order)
        puts QUANTITY
        get_num = gets.chomp.to_i
        #check user inputs if valid
        #return true on success
        #return false and puts error message
        puts MORE_THING if add_order(get_order, get_num, items)
    end
    return false
end

#Print order detail
def print_order(items)
    puts "Thank you! Your order:"
    puts "#{items.item[LATTE][:num]} latte" if items.item[LATTE][:num]
    puts "#{items.item[SCONE][:num]} scone" if items.item[SCONE][:num]
    puts "#{items.item[TEA][:num]} tea" if items.item[TEA][:num]
    return nil
end

#calcualte total cost
#return nil
def cost_cal(items)
    price = 0
    items.item.each do |h|
        price += h[:num] * h[:price]
    end
    #profit = '%.2f' % profit
    puts "Order total: $#{'%.2f' % price}"
    return nil
end

#calculate total profit
#return nil
def profit_cal(items)
    profit = 0
    items.item.each do |h|
        profit += h[:num]*(h[:price] - h[:cost])
    end
    #profit = '%.2f' % profit
    puts "The total profit is $#{'%.2f' % profit}"
    return nil
end