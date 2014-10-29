.class public final Lcom/instagram/user/c/j;
.super Ljava/lang/Object;
.source "UserStore.java"


# static fields
.field private static a:Lcom/instagram/user/c/i;


# direct methods
.method public static a()Lcom/instagram/user/c/i;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/instagram/user/c/j;->a:Lcom/instagram/user/c/i;

    return-object v0
.end method

.method public static a(Lcom/instagram/user/c/i;)V
    .locals 2
    .parameter

    .prologue
    .line 17
    sget-object v0, Lcom/instagram/user/c/j;->a:Lcom/instagram/user/c/i;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instagram/user/c/j;->a:Lcom/instagram/user/c/i;

    if-eq v0, p0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UserStore no longer a singleton"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    sput-object p0, Lcom/instagram/user/c/j;->a:Lcom/instagram/user/c/i;

    .line 21
    return-void
.end method
