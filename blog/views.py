from django.shortcuts import render
from blog.models import Post

def main(request):
    posts = Post.objects.all()
    return render(request, 'blog/main.html', {"posts": posts})
