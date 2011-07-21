module DocumentsHelper

  FORMATS = ["msword","vnd.ms-powerpoint","msexcel","rar","zip","mp3","plain","pdf"]
  
  def thumb_for(document)
    image_tag document.thumb(self)
  end
  
  def big_thumb_for(document)
    image_tag document.big_thumb(self)
  end
  
  def link_for_wall(document)
    format = Mime::Type.lookup(document.file_content_type)
    url_for(document)+"."+format.to_sym.to_s+"?style=thumb0"
  end
  
  def wrap_file_name(name)
    name
    if(name.length > 12)
      name[0,12]+"..."
    end
  end
end