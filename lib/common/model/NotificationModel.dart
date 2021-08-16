
class NotificationModel {
  int id;
  String notiHead;
  String notiHeadImgPath;
  String notiChildImgPath;
  String notiBody;

  NotificationModel(this.id, this.notiHead, this.notiHeadImgPath,
      this.notiChildImgPath, this.notiBody);

  NotificationModel.name(this.id, this.notiHead, this.notiHeadImgPath,
      this.notiChildImgPath, this.notiBody);
}