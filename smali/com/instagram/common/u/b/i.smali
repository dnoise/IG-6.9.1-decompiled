.class public final Lcom/instagram/common/u/b/i;
.super Ljava/lang/Object;
.source "PushRegistrarFactory.java"


# static fields
.field private static a:Lcom/instagram/common/u/b/h;


# direct methods
.method public static a()Lcom/instagram/common/u/b/h;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/instagram/common/u/b/i;->a:Lcom/instagram/common/u/b/h;

    if-nez v0, :cond_0

    .line 14
    invoke-static {}, Lcom/instagram/common/u/b/i;->b()Lcom/instagram/common/u/b/h;

    move-result-object v0

    sput-object v0, Lcom/instagram/common/u/b/i;->a:Lcom/instagram/common/u/b/h;

    .line 16
    :cond_0
    sget-object v0, Lcom/instagram/common/u/b/i;->a:Lcom/instagram/common/u/b/h;

    return-object v0
.end method

.method private static b()Lcom/instagram/common/u/b/h;
    .locals 1

    .prologue
    .line 22
    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADM"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    new-instance v0, Lcom/instagram/common/u/b/a/a;

    invoke-direct {v0}, Lcom/instagram/common/u/b/a/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/instagram/common/u/b/b/a;

    invoke-direct {v0}, Lcom/instagram/common/u/b/b/a;-><init>()V

    goto :goto_0
.end method
