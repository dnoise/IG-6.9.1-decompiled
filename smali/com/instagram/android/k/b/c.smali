.class public final Lcom/instagram/android/k/b/c;
.super Lcom/instagram/user/follow/a;
.source "FollowAllRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/user/follow/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "friendships/create_many/"

    return-object v0
.end method
