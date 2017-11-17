module TodolistsHelper
	def todolist_delete_button(todolist)
    # 無法刪除的 todos 直接回傳 nil，不顯示按鈕
    return unless todolist.can_destroy?
    link_to '刪除', todolist_path(todolist), class: 'btn btn-danger', method: :delete, data: { confirm: 'Delete this item ?' }
  end

  # 回傳編輯按鈕
  def todolist_edit_button(todolist)
    link_to '更新', edit_todolist_path(todolist), class: 'btn btn-primary'
  end
end
