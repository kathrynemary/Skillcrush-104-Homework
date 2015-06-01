class Blog
  attr_accessor :all_posts, :total_posts
 
  def initialize
    @all_posts = []
    @total_posts = 0
  end

  def create_post
    new_post = Post.new
    @all_posts << new_post
    @total_posts +=1
  end 

  def collect_posts
    return @all_posts
  end
 
  def publish(all_posts)
    all_posts.each do |display|
      puts display.title
      puts display.created_at
      puts display.content
    end
  end
end
 
 
class Post
  attr_accessor :title, :created_at, :content

  def initialize
    @created_at = Time.now
    puts "What is this post's title?"
    @title = gets.chomp

    puts "What is this post's content?"
    @content = gets.chomp
  end

end
 
my_blog = Blog.new
first_post = my_blog.create_post
all_posts = my_blog.collect_posts
puts my_blog.inspect
my_blog.publish(all_posts)  #how to put "do you want to create another post" automatically in shell

=begin
class Blog
  
  def initialize
     puts "Would you like to write a blog post? Y/N"
    answer = gets.downcase
    if answer == 'y' 
	  answer = thing.create_post = Post.new #???????
	  print new_post
      puts "Would you like to write another blog post? Y/N"
      answer = gets.downcase
	    if answer == 'y'
		  Post.new
		else puts "OK Byeee"
		end
    else puts "OK Bye"
    end
  end
  
end

class Post < Blog

  @total_posts = 0

  def initialize
    @time_created = Time.now
    #@total_posts += 1
	
	puts "What is the post's title?"
	@title = gets.chomp
	
	puts "What is the post's content?"
	@content = gets.chomp
	
  end
  
  def self.post_count
    puts "There are #{@total_posts} posts."  
  end
  
  def time_created
    return @time_created
  end
    
end

my_blog = Blog.new
print my_blog.inspect
=end