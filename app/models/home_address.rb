class HomeAddress < Address
  validates :postal_code, :prefecture, :city, :address1, presence: true
  validates :company_name, :division_name, absence: true # 指定された値が空か判定
end
