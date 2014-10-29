.class public final Lcom/instagram/feed/d/a;
.super Landroid/text/style/ClickableSpan;
.source "ClickableNameSpan.java"


# instance fields
.field private final a:Lcom/instagram/user/c/a;

.field private final b:Lcom/instagram/feed/d/l;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/instagram/feed/d/a;->c:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/instagram/feed/d/a;->a:Lcom/instagram/user/c/a;

    .line 22
    iput-object p3, p0, Lcom/instagram/feed/d/a;->b:Lcom/instagram/feed/d/l;

    .line 23
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Media.USER_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v1, "Media.EXTRA_MEDIA_ID"

    iget-object v2, p0, Lcom/instagram/feed/d/a;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v2}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v1, "Media.EXTRA_USER_ID"

    iget-object v2, p0, Lcom/instagram/feed/d/a;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v1, "Media.EXTRA_CLICK_POINT"

    iget-object v2, p0, Lcom/instagram/feed/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 32
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 36
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 38
    return-void
.end method
