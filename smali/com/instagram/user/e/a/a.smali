.class public abstract Lcom/instagram/user/e/a/a;
.super Lcom/instagram/ui/d/a;
.source "RequestedUserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/ui/d/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/user/follow/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/user/follow/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p2, p0, Lcom/instagram/user/e/a/a;->a:Lcom/instagram/user/follow/h;

    .line 22
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/user/e/a/a;->a:Lcom/instagram/user/follow/h;

    invoke-static {p1, p3, v0}, Lcom/instagram/user/e/a/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/instagram/user/follow/h;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/user/e/a/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    invoke-virtual {p0}, Lcom/instagram/user/e/a/a;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method protected abstract a(Landroid/view/View;Landroid/content/Context;I)V
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/user/e/a/a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {p0}, Lcom/instagram/user/e/a/a;->notifyDataSetChanged()V

    .line 37
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/user/e/a/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    iget-object v0, p0, Lcom/instagram/user/e/a/a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    invoke-virtual {p0}, Lcom/instagram/user/e/a/a;->notifyDataSetChanged()V

    .line 32
    return-void
.end method
