class StaffEvent < ApplicationRecord
  self.inheritance_column = nil # モデルでこのように書くとtypeカラムから特別な意味がなくなり普通のカラムとして使用できる p269

  belongs_to :member, class_name: "StaffMember", foreign_key: "staff_member_id"
  alias_attribute :occurred_at, :created_at

  DESCRIPTIONS = {
    logged_in: "ログイン",
    logged_out: "ログアウト",
    rejected: "ログイン拒否"
  }

  def description
    DESCRIPTIONS[type.to_sym]
  end
end
