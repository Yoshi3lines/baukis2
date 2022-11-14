class StaffMemberPresenter < ModelPresenter
  delegate :suspended?, to: :object

  def full_name
    object.family_name + " " + object.given_name
  end

  def full_name_kana
    object.family_name_kana + " " + object.given_name_kana
  end

  # 職員の停止フラグのOn/Offを表現する記号を返す。
  # On: BALLOT BOX WITH CHECK (U+2611)
  # Off: BALLOT BOX (U+2610)
  def suspended_mark
    suspended? ? raw("&#x2611;") : raw("&#x2610;")
  end
end

# class StaffMemberPresenter < ModelPresenter
#   def password_field_block(name, label_text, options = {})
#     if object.new_record?
#       super(name, label_text, options)
#     end
#   end

#   # def full_name_block(name1, name2, label_text, options = {})
#   # end

#   def suspended_check_box
#     markup(:div, class: "check-boxes") do |m|
#       m << check_box(suspended)
#       m << label(:suspended, "アカウント停止")
#     end
#   end

#   # 職員の停止フラグのOn/Offを表現する記号を返す
#   # On: BALLOT BOX WITH CHECK (U+2611)
#   # Off: BALLOT BOX (U+2610)
#   def suspended_mark
#     # 下は元文で、まとめた
#     # object.suspended? ?
#     # view_context.raw("&#2611;") :
#     # view_context.raw("&#2610;")
#     object.suspended? ? raw("&#x2611;") : raw("&#x2610;")
#   end
# end
