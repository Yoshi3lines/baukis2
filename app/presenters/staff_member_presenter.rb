class StaffMemberPresenter < ModelPresenter
  # 職員の停止フラグのOn/Offを表現する記号を返す
  # On: BALLOT BOX WITH CHECK (U+2611)
  # Off: BALLOT BOX (U+2610)
  def suspended_mark
    # 下は元分で、まとめた
    # object.suspended? ?
    # view_context.raw("&#2611;") :
    # view_context.raw("&#2610;")
    object.suspended? ? raw("&#x2611;") : raw("&#x2610;")
  end
end
