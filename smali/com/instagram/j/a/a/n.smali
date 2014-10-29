.class final Lcom/instagram/j/a/a/n;
.super Ljava/lang/Object;
.source "NewsfeedStoryRowBinderUserFollow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/j/a/a/a;

.field final synthetic b:Lcom/instagram/j/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/j/a/a/a;Lcom/instagram/j/d/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/instagram/j/a/a/n;->a:Lcom/instagram/j/a/a/a;

    iput-object p2, p0, Lcom/instagram/j/a/a/n;->b:Lcom/instagram/j/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/instagram/j/a/a/n;->a:Lcom/instagram/j/a/a/a;

    iget-object v1, p0, Lcom/instagram/j/a/a/n;->b:Lcom/instagram/j/d/c;

    invoke-virtual {v1}, Lcom/instagram/j/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/j/a/a/a;->a(Ljava/lang/String;)V

    .line 52
    return-void
.end method
