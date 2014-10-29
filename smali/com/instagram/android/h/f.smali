.class public Lcom/instagram/android/h/f;
.super Ljava/lang/Object;
.source "RealtimeUpdateController.java"

# interfaces
.implements Lcom/instagram/common/p/b/a;
.implements Lcom/instagram/realtimeclient/RealtimeEventHandler;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/instagram/realtimeclient/RealtimeClient;

.field private c:Lcom/instagram/android/h/d;

.field private d:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

.field private e:Lcom/instagram/android/h/a;

.field private final f:Lcom/instagram/realtimeclient/RealtimeOperationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/instagram/android/h/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/h/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/instagram/realtimeclient/RealtimeOperationManager;

    new-instance v1, Lcom/instagram/android/h/g;

    invoke-direct {v1, p0}, Lcom/instagram/android/h/g;-><init>(Lcom/instagram/android/h/f;)V

    invoke-direct {v0, v1}, Lcom/instagram/realtimeclient/RealtimeOperationManager;-><init>(Lcom/instagram/realtimeclient/RealtimeOperationManager$Listener;)V

    iput-object v0, p0, Lcom/instagram/android/h/f;->f:Lcom/instagram/realtimeclient/RealtimeOperationManager;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/instagram/android/h/f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/h/f;)Lcom/instagram/realtimeclient/RealtimeClient;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/instagram/android/h/f;->b:Lcom/instagram/realtimeclient/RealtimeClient;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/h/f;)Lcom/instagram/realtimeclient/RealtimeOperationManager;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/instagram/android/h/f;->f:Lcom/instagram/realtimeclient/RealtimeOperationManager;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/h/f;)Lcom/instagram/android/h/d;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/instagram/android/h/f;->c:Lcom/instagram/android/h/d;

    return-object v0
.end method

.method public static c()Lcom/instagram/android/h/f;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/instagram/android/h/i;->a:Lcom/instagram/android/h/f;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    iget-object v0, p0, Lcom/instagram/android/h/f;->b:Lcom/instagram/realtimeclient/RealtimeClient;

    invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeClient;->unsubscribe()V

    .line 133
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/instagram/common/d/j;Lcom/instagram/android/h/a;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Lcom/instagram/android/h/d;

    invoke-direct {v0}, Lcom/instagram/android/h/d;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/h/f;->c:Lcom/instagram/android/h/d;

    .line 67
    invoke-virtual {p2}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "AuthHelper.BROADCAST_USER_CHANGED"

    new-instance v2, Lcom/instagram/android/h/h;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/h/h;-><init>(Lcom/instagram/android/h/f;B)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 73
    new-instance v0, Lcom/instagram/realtimeclient/RealtimeClient;

    invoke-direct {v0, p1}, Lcom/instagram/realtimeclient/RealtimeClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/h/f;->b:Lcom/instagram/realtimeclient/RealtimeClient;

    .line 74
    iget-object v0, p0, Lcom/instagram/android/h/f;->b:Lcom/instagram/realtimeclient/RealtimeClient;

    invoke-virtual {v0, p0}, Lcom/instagram/realtimeclient/RealtimeClient;->setEventHandler(Lcom/instagram/realtimeclient/RealtimeEventHandler;)V

    .line 76
    invoke-static {}, Lcom/instagram/common/p/b/b;->a()Lcom/instagram/common/p/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/common/p/b/b;->a(Lcom/instagram/common/p/b/a;)V

    .line 78
    sget-object v0, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->NOT_CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    iput-object v0, p0, Lcom/instagram/android/h/f;->d:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    .line 79
    iput-object p3, p0, Lcom/instagram/android/h/f;->e:Lcom/instagram/android/h/a;

    .line 80
    return-void
.end method

.method public final a(Lcom/instagram/realtimeclient/RealtimePatchRange;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/instagram/android/h/f;->f:Lcom/instagram/realtimeclient/RealtimeOperationManager;

    invoke-virtual {v0, p1}, Lcom/instagram/realtimeclient/RealtimeOperationManager;->setPatchRange(Lcom/instagram/realtimeclient/RealtimePatchRange;)V

    .line 96
    return-void
.end method

.method public final a(Lcom/instagram/realtimeclient/RealtimeSubscription;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    invoke-static {}, Lcom/instagram/common/s/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/instagram/l/a/a;->a()Lcom/instagram/l/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    .line 152
    invoke-static {}, Lcom/instagram/common/p/b/b;->a()Lcom/instagram/common/p/b/b;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/instagram/common/p/b/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/instagram/android/h/f;->b:Lcom/instagram/realtimeclient/RealtimeClient;

    invoke-virtual {v0, p1}, Lcom/instagram/realtimeclient/RealtimeClient;->setSubscription(Lcom/instagram/realtimeclient/RealtimeSubscription;)V

    .line 160
    iget-object v0, p0, Lcom/instagram/android/h/f;->b:Lcom/instagram/realtimeclient/RealtimeClient;

    invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeClient;->subscribe()V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/realtimeclient/RealtimePatchTuple;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/instagram/android/h/f;->f:Lcom/instagram/realtimeclient/RealtimeOperationManager;

    invoke-virtual {v0, p1}, Lcom/instagram/realtimeclient/RealtimeOperationManager;->handlePatches(Ljava/util/Map;)V

    .line 100
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    iget-object v0, p0, Lcom/instagram/android/h/f;->b:Lcom/instagram/realtimeclient/RealtimeClient;

    invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeClient;->subscribe()V

    .line 139
    return-void
.end method

.method public final d()Lcom/instagram/realtimeclient/RealtimePatchRange;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/instagram/android/h/f;->f:Lcom/instagram/realtimeclient/RealtimeOperationManager;

    invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeOperationManager;->getPatchRange()Lcom/instagram/realtimeclient/RealtimePatchRange;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/instagram/android/h/f;->d:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    return-object v0
.end method

.method public onConnectionStatusChanged(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/instagram/android/h/f;->d:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    .line 109
    invoke-static {}, Lcom/instagram/common/s/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/instagram/android/h/f;->a:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/instagram/android/h/f;->e:Lcom/instagram/android/h/a;

    invoke-virtual {v0, p1}, Lcom/instagram/android/h/a;->a(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V

    .line 113
    :cond_0
    return-void
.end method

.method public onFeedRefreshRequested()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/instagram/android/h/f;->c:Lcom/instagram/android/h/d;

    invoke-static {}, Lcom/instagram/android/h/d;->a()V

    .line 123
    return-void
.end method

.method public onPatchEvent(Lcom/instagram/realtimeclient/RealtimePatchEvent;)V
    .locals 1
    .parameter "patchEvent"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/h/f;->f:Lcom/instagram/realtimeclient/RealtimeOperationManager;

    invoke-virtual {v0, p1}, Lcom/instagram/realtimeclient/RealtimeOperationManager;->handlePatchEvent(Lcom/instagram/realtimeclient/RealtimePatchEvent;)V

    .line 118
    return-void
.end method
