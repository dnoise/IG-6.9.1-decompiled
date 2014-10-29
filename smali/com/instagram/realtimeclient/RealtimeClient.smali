.class public Lcom/instagram/realtimeclient/RealtimeClient;
.super Ljava/lang/Object;
.source "RealtimeClient.java"

# interfaces
.implements Lcom/a/a/j;


# static fields
.field private static final NETWORK_CONNECTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private static final sMaxBackoffIntervalMs:J

.field private static final sParseExecutor:Ljava/util/concurrent/Executor;

.field private static final sSubscribeTimeoutMs:J


# instance fields
.field private mBackoffIntervalMs:J

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;

.field private mIsBroadcastReceiverRegistered:Z

.field private mPingTimeoutMs:J

.field private final mPingTimeoutRunnable:Ljava/lang/Runnable;

.field private final mRealtimeHandler:Landroid/os/Handler;

.field private final mReconnectRunnable:Ljava/lang/Runnable;

.field private final mRefreshRunnable:Ljava/lang/Runnable;

.field private final mSocketFactory:Lcom/a/a/e;

.field private final mSubscribeTimeoutRunnable:Ljava/lang/Runnable;

.field private mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;

.field private mWebSocketClient:Lcom/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xa

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/instagram/realtimeclient/RealtimeClient;->sMaxBackoffIntervalMs:J

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/instagram/realtimeclient/RealtimeClient;->sSubscribeTimeoutMs:J

    .line 47
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/instagram/realtimeclient/RealtimeClient;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 48
    invoke-static {}, Lcom/instagram/common/y/c/e;->a()Lcom/instagram/common/y/c/e;

    move-result-object v0

    const-string v1, "RealtimeClient"

    invoke-virtual {v0, v1}, Lcom/instagram/common/y/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/y/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/y/c/e;->c()Lcom/instagram/common/y/c/d;

    move-result-object v0

    sput-object v0, Lcom/instagram/realtimeclient/RealtimeClient;->sParseExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mPingTimeoutMs:J

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBackoffIntervalMs:J

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/instagram/realtimeclient/RealtimeClient$1;

    invoke-direct {v0, p0}, Lcom/instagram/realtimeclient/RealtimeClient$1;-><init>(Lcom/instagram/realtimeclient/RealtimeClient;)V

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mReconnectRunnable:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lcom/instagram/realtimeclient/RealtimeClient$2;

    invoke-direct {v0, p0}, Lcom/instagram/realtimeclient/RealtimeClient$2;-><init>(Lcom/instagram/realtimeclient/RealtimeClient;)V

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/instagram/realtimeclient/RealtimeClient$3;

    invoke-direct {v0, p0}, Lcom/instagram/realtimeclient/RealtimeClient$3;-><init>(Lcom/instagram/realtimeclient/RealtimeClient;)V

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscribeTimeoutRunnable:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Lcom/instagram/realtimeclient/RealtimeClient$4;

    invoke-direct {v0, p0}, Lcom/instagram/realtimeclient/RealtimeClient$4;-><init>(Lcom/instagram/realtimeclient/RealtimeClient;)V

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mPingTimeoutRunnable:Ljava/lang/Runnable;

    .line 88
    new-instance v0, Lcom/instagram/realtimeclient/RealtimeClient$5;

    invoke-direct {v0, p0}, Lcom/instagram/realtimeclient/RealtimeClient$5;-><init>(Lcom/instagram/realtimeclient/RealtimeClient;)V

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Lcom/instagram/realtimeclient/RealtimeClient$6;

    invoke-direct {v0, p0}, Lcom/instagram/realtimeclient/RealtimeClient$6;-><init>(Lcom/instagram/realtimeclient/RealtimeClient;)V

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSocketFactory:Lcom/a/a/e;

    .line 151
    iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mContext:Landroid/content/Context;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/realtimeclient/RealtimeClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->connect()V

    return-void
.end method

.method static synthetic access$100(Lcom/instagram/realtimeclient/RealtimeClient;)Lcom/instagram/realtimeclient/RealtimeEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/realtimeclient/RealtimeClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->disconnect()V

    return-void
.end method

.method static synthetic access$300()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/instagram/realtimeclient/RealtimeClient;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/realtimeclient/RealtimeClient;Lcom/instagram/realtimeclient/RealtimeEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/instagram/realtimeclient/RealtimeClient;->handleRealtimeEvent(Lcom/instagram/realtimeclient/RealtimeEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/realtimeclient/RealtimeClient;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelDelayedRunnables()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mReconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 284
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscribeTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 285
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mPingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    return-void
.end method

.method private connect()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;

    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->cancelDelayedRunnables()V

    .line 220
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/a/a/f;

    iget-object v2, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;

    invoke-virtual {v2}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSocketFactory:Lcom/a/a/e;

    invoke-direct {v1, v2, v0, v3}, Lcom/a/a/f;-><init>(Ljava/net/URI;Ljava/util/List;Lcom/a/a/e;)V

    iput-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    .line 223
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    invoke-virtual {v0, p0}, Lcom/a/a/f;->a(Lcom/a/a/j;)V

    .line 224
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->b()V

    goto :goto_0
.end method

.method private disconnect()V
    .locals 2

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->cancelDelayedRunnables()V

    .line 204
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->a()V

    .line 207
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->c()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    .line 209
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;

    sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->NOT_CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    invoke-interface {v0, v1}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onConnectionStatusChanged(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V

    .line 211
    :cond_0
    return-void
.end method

.method private handleRealtimeEvent(Lcom/instagram/realtimeclient/RealtimeEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 243
    instance-of v0, p1, Lcom/instagram/realtimeclient/RealtimePatchEvent;

    if-eqz v0, :cond_1

    .line 244
    check-cast p1, Lcom/instagram/realtimeclient/RealtimePatchEvent;

    .line 245
    .end local p1
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimePatchEvent;->sequence:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->updateSequence(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;

    invoke-interface {v0, p1}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onPatchEvent(Lcom/instagram/realtimeclient/RealtimePatchEvent;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 247
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/instagram/realtimeclient/RealtimeSubscribedEvent;

    if-eqz v0, :cond_2

    .line 248
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBackoffIntervalMs:J

    .line 249
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscribeTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;

    move-object v0, p1

    check-cast v0, Lcom/instagram/realtimeclient/RealtimeSubscribedEvent;

    iget-object v0, v0, Lcom/instagram/realtimeclient/RealtimeSubscribedEvent;->sequence:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/instagram/realtimeclient/RealtimeSubscription;->updateSequence(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;

    sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->SUBSCRIBED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    invoke-interface {v0, v1}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onConnectionStatusChanged(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V

    .line 255
    check-cast p1, Lcom/instagram/realtimeclient/RealtimeSubscribedEvent;

    .end local p1
    iget-boolean v0, p1, Lcom/instagram/realtimeclient/RealtimeSubscribedEvent;->mustRefresh:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;

    invoke-interface {v0}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onFeedRefreshRequested()V

    goto :goto_0

    .line 258
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/instagram/realtimeclient/RealtimeUnsubscribedEvent;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;

    sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    invoke-interface {v0, v1}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onConnectionStatusChanged(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V

    .line 261
    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->sendSubscribeMessage()V

    goto :goto_0

    .line 262
    :cond_3
    instance-of v0, p1, Lcom/instagram/realtimeclient/RealtimeKeepaliveEvent;

    if-eqz v0, :cond_4

    .line 263
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    check-cast p1, Lcom/instagram/realtimeclient/RealtimeKeepaliveEvent;

    .end local p1
    iget-wide v1, p1, Lcom/instagram/realtimeclient/RealtimeKeepaliveEvent;->interval:D

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mPingTimeoutMs:J

    .line 264
    invoke-virtual {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->onPing()V

    goto :goto_0

    .line 265
    .restart local p1
    :cond_4
    instance-of v0, p1, Lcom/instagram/realtimeclient/RealtimeErrorEvent;

    if-eqz v0, :cond_5

    .line 267
    invoke-virtual {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->unsubscribe()V

    .line 268
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/instagram/realtimeclient/RealtimeClient;->performWithBackoff(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 270
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0
.end method

.method private performWithBackoff(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "runnable"

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBackoffIntervalMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1f4

    :goto_0
    iput-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBackoffIntervalMs:J

    .line 277
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBackoffIntervalMs:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    return-void

    .line 275
    :cond_0
    iget-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBackoffIntervalMs:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    sget-wide v2, Lcom/instagram/realtimeclient/RealtimeClient;->sMaxBackoffIntervalMs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private sendSubscribeMessage()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 233
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscribeTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscribeTimeoutRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/instagram/realtimeclient/RealtimeClient;->sSubscribeTimeoutMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    new-instance v1, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;

    iget-object v2, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;

    invoke-direct {v1, v2}, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;-><init>(Lcom/instagram/realtimeclient/RealtimeSubscription;)V

    invoke-static {v1}, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand__JsonHelper;->serializeToJson(Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0
.end method


# virtual methods
.method public getSubscription()Lcom/instagram/realtimeclient/RealtimeSubscription;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;

    return-object v0
.end method

.method public onConnect()V
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;

    invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getURL()Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;

    sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    invoke-interface {v0, v1}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onConnectionStatusChanged(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V

    .line 296
    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->cancelDelayedRunnables()V

    .line 297
    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->sendSubscribeMessage()V

    .line 298
    invoke-virtual {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->onPing()V

    .line 299
    return-void
.end method

.method public onDisconnect(ILjava/lang/String;)V
    .locals 2
    .parameter "code"
    .parameter

    .prologue
    .line 340
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->a()V

    .line 345
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->c()V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->cancelDelayedRunnables()V

    .line 350
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;

    sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->NOT_CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    invoke-interface {v0, v1}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onConnectionStatusChanged(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V

    .line 351
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/common/y/g/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mReconnectRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/instagram/realtimeclient/RealtimeClient;->performWithBackoff(Ljava/lang/Runnable;)V

    .line 354
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Error: "

    invoke-static {v0, v1, p1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    const/16 v0, -0x3e8

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/realtimeclient/RealtimeClient;->onDisconnect(ILjava/lang/String;)V

    .line 361
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    sget-object v0, Lcom/instagram/realtimeclient/RealtimeClient;->sParseExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/instagram/realtimeclient/RealtimeClient$7;

    invoke-direct {v1, p0, p1}, Lcom/instagram/realtimeclient/RealtimeClient$7;-><init>(Lcom/instagram/realtimeclient/RealtimeClient;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method

.method public onMessage([B)V
    .locals 0
    .parameter

    .prologue
    .line 328
    return-void
.end method

.method public onPing()V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mPingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 333
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mPingTimeoutRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mPingTimeoutMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    :cond_0
    return-void
.end method

.method public setEventHandler(Lcom/instagram/realtimeclient/RealtimeEventHandler;)V
    .locals 0
    .parameter "eventHandler"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;

    .line 156
    return-void
.end method

.method public setSubscription(Lcom/instagram/realtimeclient/RealtimeSubscription;)V
    .locals 2
    .parameter "subscription"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;

    if-nez v0, :cond_0

    .line 160
    iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;

    .line 176
    :goto_0
    return-void

    .line 163
    :cond_0
    if-nez p1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->unsubscribe()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;

    invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;

    invoke-virtual {v0, p1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->updateWithSubscription(Lcom/instagram/realtimeclient/RealtimeSubscription;)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->unsubscribe()V

    .line 174
    iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;

    goto :goto_0
.end method

.method public subscribe()V
    .locals 4

    .prologue
    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBackoffIntervalMs:J

    .line 185
    iget-boolean v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mIsBroadcastReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mIsBroadcastReceiverRegistered:Z

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->connect()V

    .line 190
    return-void
.end method

.method public unsubscribe()V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    iget-boolean v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mIsBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mIsBroadcastReceiverRegistered:Z

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->disconnect()V

    .line 199
    return-void
.end method
