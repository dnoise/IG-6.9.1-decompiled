.class final Lcom/instagram/j/e;
.super Lcom/instagram/feed/d/k;
.source "NewsfeedStoryUtil.java"


# instance fields
.field final synthetic a:Lcom/instagram/j/a/a/a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/j/a/a/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/instagram/j/e;->a:Lcom/instagram/j/a/a/a;

    iput-object p2, p0, Lcom/instagram/j/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/instagram/feed/d/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/instagram/j/e;->a:Lcom/instagram/j/a/a/a;

    iget-object v1, p0, Lcom/instagram/j/e;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/j/a/a/a;->e(Ljava/lang/String;)V

    .line 116
    return-void
.end method
