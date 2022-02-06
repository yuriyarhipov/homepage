from django.db import models

# Create your models here.
class Post(models.Model):
    title = models.CharField(max_length=100)
    preview = models.TextField(default="")
    body = models.TextField()
    date = models.DateField()
    mail_list = models.ForeignKey("MailList", on_delete=models.DO_NOTHING, null=True, blank=True)

    def __str__(self):
        return self.title

class MailList(models.Model):
    date = models.DateField()
    title = models.TextField()
    main_text = models.TextField()
