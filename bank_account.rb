class BankAccount
    @@total_accounts = 0
    def initialize
        @account_num = rand(20 ** 20).to_s
        @checking = 0
        @savings = 0
        @@total_accounts += 1
    end
    def account_num
        p @account_num
        self
    end
    def checking_account
        p @checkings
        self    
    end
    def savings_account
        p @savings
        self
    end
    def deposit(account, amount)
        if (account == "checking")
            @checking += amount
        elsif (account == "savings")
            @savings += amount 
        end
        self
    end
    def withdraw(account, amount)
        if (account == "checking")
            if (@checking > amount)
                @checking -= amount 
            else
                p "You can not withdraw more than what is in your %s" % account
            end
        elsif (account == "savings")
            if (@savings > amount)
                @savings -= amount
            else
                p "You can not withdraw more than what is in your %s" % account
            end
        else
            p "No account named %s" % account
        end 
        self         
    end
    def total_ammount
        @savings+@checking
    end
    def total_accounts
        @@total_accounts
    end
    
    def account_info
        p "ACCOUNT # " + @account_num + " | CHECKING: "+ @checking.to_s + " | SAVINGS: "+ @savings.to_s + " | TOTAL AMMOUNT: "+ total_ammount.to_s + " | NUMBER OF ACCOUNTS: "+ total_accounts.to_s
        self
    end



    private
    def interest_rate
        @interest_rate = 0.01
    end

    

end

account = BankAccount.new
account.deposit("savings", 400).deposit("checking", 32).withdraw("savings", 150)
account.account_info