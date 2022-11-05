StaffMember.create!(
  email: "taro@example.com",
  family_name: "山田",
  given_name: "太郎",
  family_name_kana: "ヤマダ",
  given_name_kana: "タロウ",
  password: "password",
  start_date: Date.today
)

StaffMember.create!(
  email: "gro@example.com",
  family_name: "後藤",
  given_name: "四郎",
  family_name_kana: "ゴトウ",
  given_name_kana: "シロウ",
  password: "password",
  start_date: Date.today,
  suspended: true
)
