.class public Lcom/instagram/common/y/f/b;
.super Ljava/lang/Object;
.source "LogoutHelper.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/instagram/common/y/f/b;

    sput-object v0, Lcom/instagram/common/y/f/b;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "LogoutManager.BROADCAST_POST_LOGOUT"

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Ljava/lang/String;)Z

    .line 49
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    sget-object v0, Lcom/instagram/common/y/f/b;->a:Ljava/lang/Class;

    .line 32
    invoke-static {p0}, Lcom/instagram/common/y/f/b;->b(Landroid/content/Context;)V

    .line 33
    invoke-static {}, Lcom/instagram/common/y/f/b;->a()V

    .line 34
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-static {p0}, Lcom/instagram/common/y/f/b;->c(Landroid/content/Context;)Lcom/instagram/common/y/f/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/common/y/f/a;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private static c(Landroid/content/Context;)Lcom/instagram/common/y/f/a;
    .locals 2
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    instance-of v1, v0, Lcom/instagram/common/b/a;

    if-eqz v1, :cond_0

    .line 19
    check-cast v0, Lcom/instagram/common/b/a;

    const-class v1, Lcom/instagram/common/y/f/a;

    invoke-interface {v0, v1}, Lcom/instagram/common/b/a;->getAppService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/y/f/a;

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your Application class needs to implement AppSpecificLogoutDelegate interface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
