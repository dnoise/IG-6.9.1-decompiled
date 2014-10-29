.class final Lcom/instagram/j/a/a/o;
.super Ljava/lang/Object;
.source "NewsfeedStoryRowBinderUserFollow.java"

# interfaces
.implements Lcom/instagram/user/follow/g;


# instance fields
.field final synthetic a:Lcom/instagram/j/a/a/a;

.field final synthetic b:Lcom/instagram/j/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/j/a/a/a;Lcom/instagram/j/d/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/instagram/j/a/a/o;->a:Lcom/instagram/j/a/a/a;

    iput-object p2, p0, Lcom/instagram/j/a/a/o;->b:Lcom/instagram/j/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/c;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/j/a/a/o;->a:Lcom/instagram/j/a/a/a;

    iget-object v1, p0, Lcom/instagram/j/a/a/o;->b:Lcom/instagram/j/d/c;

    invoke-virtual {v1}, Lcom/instagram/j/d/c;->i()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/j/a/a/a;->a(Lcom/instagram/user/c/a;)V

    .line 67
    return-void
.end method
