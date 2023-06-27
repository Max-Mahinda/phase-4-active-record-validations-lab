class Post < ApplicationRecord
    #validate All authors have a name
    validates:name ,presence :true
    validates:name,uniqueness:true
    validates:phone_number ,length :{is:10}


   # All posts have a title
#Post content is at least 250 characters long
#Post summary is a maximum of 250 characters
#Post category is either Fiction or Non-Fiction. This step requires an inclusion
#Post author is either a person or a group
#Post tags are comma separated                          
    validates :title,presence :true
    validates :summary,presence :true ,length:{maximum:250}
    validates :category,presence :true
    validates :content,presence :true,length:{minimum:250}
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
end
