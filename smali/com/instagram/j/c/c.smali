.class final Lcom/instagram/j/c/c;
.super Lcom/instagram/api/j/f;
.source "NewsfeedFollowRequestsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/j/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/j/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/instagram/j/c/c;->a:Lcom/instagram/j/c/a;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/instagram/j/c/c;->a:Lcom/instagram/j/c/a;

    invoke-static {v0}, Lcom/instagram/j/c/a;->a(Lcom/instagram/j/c/a;)Lcom/instagram/j/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/a/c;->notifyDataSetChanged()V

    .line 121
    return-void
.end method
