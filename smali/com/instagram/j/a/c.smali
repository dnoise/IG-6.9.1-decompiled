.class public final Lcom/instagram/j/a/c;
.super Lcom/instagram/user/e/a/a;
.source "NewsfeedFollowRequestsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/user/e/a/a",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/user/e/a/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/user/follow/h;Lcom/instagram/user/e/a/a/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/instagram/user/e/a/a;-><init>(Landroid/content/Context;Lcom/instagram/user/follow/h;)V

    .line 22
    iput-object p3, p0, Lcom/instagram/j/a/c;->a:Lcom/instagram/user/e/a/a/e;

    .line 23
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    iget-object v2, p0, Lcom/instagram/j/a/c;->a:Lcom/instagram/user/e/a/a/e;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/e/a/a/f;

    invoke-virtual {p0, p3}, Lcom/instagram/j/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/user/c/a;

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, p3, v3}, Lcom/instagram/user/e/a/a/a;->a(Lcom/instagram/user/e/a/a/e;Lcom/instagram/user/e/a/a/f;Lcom/instagram/user/c/a;IZ)V

    .line 33
    return-void
.end method
