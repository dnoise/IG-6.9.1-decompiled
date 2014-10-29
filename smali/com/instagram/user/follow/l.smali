.class final Lcom/instagram/user/follow/l;
.super Lcom/instagram/api/j/a;
.source "FollowStatusUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-static {p1}, Lcom/instagram/g/c;->a(Lcom/instagram/api/j/j;)V

    .line 110
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    return-void
.end method
