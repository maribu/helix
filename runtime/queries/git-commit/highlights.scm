(comment) @comment

(subject) @markup.heading
(subject
  (prefix) @function)
(subject
  (conv_commit_type) @keyword)
(subject
  (conv_commit_scope) @variable.parameter)
(subject
  (conv_commit_breaking) @punctuation.special)
(subject
  ":" @punctuation.delimiter)
(subject
  (conv_commit_scope
    ["(" ")"] @punctuation.delimiter))

(trailer
  (trailer_key) @variable.other.member)
(trailer
  (trailer_value) @string)
(trailer
  ":" @punctuation.delimiter)

(file_change
  (file) @string.special.path)
(file_change
  (change_details) @attribute)
(file_change
  ["->" ":" "(" ")"] @punctuation.delimiter)

((file_change
   (change_type) @diff.plus)
 (#any-of? @diff.plus
   "berkas baru"
   "comhad nua"
   "fitxer nou"
   "neue Datei"
   "new file"
   "nouveau fichier "
   "novo ficheiro"
   "nowy plik"
   "nuevo archivo"
   "nuevos archivos"
   "nuovo file"
   "ny fil"
   "tập tin mới"
   "yeni dosya"
   "νέο αρχείο"
   "нов файл"
   "новий файл"
   "новый файл"
   "새 파일"))

((file_change
   (change_type) @diff.minus)
 (#any-of? @diff.minus
   "borrado"
   "borrados"
   "borttagen"
   "deleted"
   "eliminado"
   "eliminato"
   "gelöscht"
   "scriosta"
   "silindi"
   "supprimé "
   "suprimit"
   "terhapus"
   "usunięto"
   "đã xóa"
   "διαγραφή"
   "видалено"
   "изтрит"
   "удалено"
   "삭제함"))

((file_change
   (change_type) @diff.delta)
 (#any-of? @diff.delta
   "değiştirildi"
   "geändert"
   "modhnaithe"
   "modificado"
   "modificados"
   "modificat"
   "modificato"
   "modified"
   "modifié"
   "terubah"
   "zmieniono"
   "ändrad"
   "đã sửa"
   "τροποποίηση"
   "змінено"
   "изменено"
   "променен"
   "修改"
   "수정함"))

((file_change
   (change_type) @diff.delta.moved)
 (#any-of? @diff.delta.moved
   "athainmnithe"
   "canviat de nom"
   "namnbytt"
   "nome mudado"
   "renamed"
   "renombrado"
   "renombrados"
   "renomeado"
   "renommé "
   "rinominato"
   "terganti nama"
   "umbenannt"
   "yeniden adlandırıldı"
   "zmieniono nazwę"
   "đã đổi tên"
   "μετονομασία"
   "переименовано"
   "перейменовано"
   "преименуван"
   "이름 바꿈"))

((file_change
   (change_type) @diff.delta)
 (#any-of? @diff.delta
   "Typänderung"
   "cambio de tipo"
   "cambios de tipo"
   "canviat de tipus"
   "cineál cineál"
   "modif. type "
   "modifica tipo"
   "tipe perubahan"
   "tipo alterado"
   "typbyte"
   "typechange"
   "türü değiştirildi"
   "zmiana typu"
   "đổi kiểu"
   "đổi-kiểu"
   "αλλαγή τύπου"
   "змінено тип"
   "изменен тип"
   "смяна на вида"
   "종류 바뀜"))
