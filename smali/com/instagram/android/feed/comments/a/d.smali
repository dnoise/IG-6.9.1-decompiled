.class final Lcom/instagram/android/feed/comments/a/d;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/d;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 465
    const-string v0, "http://help.instagram.com/customer/portal/articles/245800-reducing-comment-spam"

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/d;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v1}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 467
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 468
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/d;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/comments/a/a;->a(Landroid/content/Intent;)V

    .line 469
    return-void
.end method
