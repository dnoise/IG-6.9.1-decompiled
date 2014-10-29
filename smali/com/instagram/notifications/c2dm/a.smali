.class final Lcom/instagram/notifications/c2dm/a;
.super Lcom/instagram/common/a/a/j;
.source "IgPushRegistrationService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/instagram/notifications/c2dm/a;-><init>()V

    return-void
.end method

.method private static c()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/instagram/notifications/c2dm/IgPushRegistrationService;->a()Ljava/lang/Class;

    .line 58
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/l/a/b;->a(J)V

    .line 59
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-static {}, Lcom/instagram/notifications/c2dm/a;->c()V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/api/k/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/instagram/notifications/c2dm/IgPushRegistrationService;->a()Ljava/lang/Class;

    .line 64
    return-void
.end method
