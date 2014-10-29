.class public final Lcom/instagram/android/directshare/c/x;
.super Ljava/lang/Object;
.source "RequestedDirectSharesStore.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/f/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/instagram/android/directshare/c/x;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/f/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lcom/instagram/common/x/a;->a()Lcom/instagram/common/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/x/a;->b()V

    .line 25
    sget-object v0, Lcom/instagram/android/directshare/c/x;->a:Ljava/util/List;

    return-object v0
.end method

.method public static a(Lcom/instagram/f/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-static {}, Lcom/instagram/common/x/a;->a()Lcom/instagram/common/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/x/a;->b()V

    .line 40
    sget-object v0, Lcom/instagram/android/directshare/c/x;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/instagram/android/directshare/c/x;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    invoke-static {}, Lcom/instagram/android/directshare/c/x;->d()V

    .line 44
    :cond_0
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/f/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lcom/instagram/common/x/a;->a()Lcom/instagram/common/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/x/a;->b()V

    .line 30
    sput-object p0, Lcom/instagram/android/directshare/c/x;->a:Ljava/util/List;

    .line 31
    invoke-static {}, Lcom/instagram/android/directshare/c/x;->d()V

    .line 32
    return-void
.end method

.method public static b(Lcom/instagram/f/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-static {}, Lcom/instagram/common/x/a;->a()Lcom/instagram/common/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/x/a;->b()V

    .line 48
    sget-object v0, Lcom/instagram/android/directshare/c/x;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/instagram/android/directshare/c/x;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    invoke-static {}, Lcom/instagram/android/directshare/c/x;->c()V

    .line 52
    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/instagram/android/directshare/c/x;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private static c()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "INTENT_ACTION_PENDING_REQUEST_ACCEPTED"

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Ljava/lang/String;)Z

    .line 57
    return-void
.end method

.method private static d()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "INTENT_ACTION_PENDING_REQUESTS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 61
    return-void
.end method
