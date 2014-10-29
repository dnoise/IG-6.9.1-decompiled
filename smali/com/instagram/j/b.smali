.class final Lcom/instagram/j/b;
.super Lcom/instagram/feed/d/k;
.source "NewsfeedStoryUtil.java"


# instance fields
.field final synthetic a:Lcom/instagram/j/a/a/a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/j/a/a/a;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/instagram/j/b;->a:Lcom/instagram/j/a/a/a;

    iput-object p2, p0, Lcom/instagram/j/b;->b:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/feed/d/k;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/j/b;->a:Lcom/instagram/j/a/a/a;

    iget-object v1, p0, Lcom/instagram/j/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/instagram/j/a/a/a;->a(Ljava/lang/String;)V

    .line 57
    return-void
.end method
