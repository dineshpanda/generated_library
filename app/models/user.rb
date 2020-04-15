class User < ApplicationRecord
  # Direct associations

  has_many   :write_books,
             :class_name => "Book",
             :foreign_key => "author_id",
             :dependent => :destroy

  has_many   :visitor_entries,
             :dependent => :destroy

  # Indirect associations

  has_many   :read_books,
             :through => :visitor_entries,
             :source => :book

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
