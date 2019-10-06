json.content    @message.content
json.image      @message.image.url
json.id         @message.id
json.date       @message.created_at.strftime('%Y/%m/%d')
json.user_name  @message.user.name