.class public Lcom/instagram/android/directshare/f/a;
.super Ljava/lang/Object;
.source "ClearInboxNewCountUtil.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Lcom/instagram/android/directshare/f/a;


# instance fields
.field private c:Lcom/instagram/common/a/a/k;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/instagram/f/a/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/instagram/android/directshare/f/a;

    sput-object v0, Lcom/instagram/android/directshare/f/a;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/directshare/f/a;->d:Ljava/util/HashMap;

    .line 37
    new-instance v0, Lcom/instagram/common/a/a/o;

    invoke-direct {v0}, Lcom/instagram/common/a/a/o;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/directshare/f/a;->c:Lcom/instagram/common/a/a/k;

    .line 38
    return-void
.end method

.method public static a()Lcom/instagram/android/directshare/f/a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/instagram/android/directshare/f/a;->b:Lcom/instagram/android/directshare/f/a;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/instagram/android/directshare/f/a;->c()V

    .line 27
    :cond_0
    sget-object v0, Lcom/instagram/android/directshare/f/a;->b:Lcom/instagram/android/directshare/f/a;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/directshare/f/a;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/instagram/android/directshare/f/a;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(J)V
    .locals 3
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instagram/android/directshare/f/a;->d:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/instagram/android/directshare/f/a;->a:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    iget-object v0, p0, Lcom/instagram/android/directshare/f/a;->c:Lcom/instagram/common/a/a/k;

    new-instance v1, Lcom/instagram/f/a/a/d;

    invoke-direct {v1, p1, p2}, Lcom/instagram/f/a/a/d;-><init>(J)V

    new-instance v2, Lcom/instagram/android/directshare/f/b;

    invoke-direct {v2, p0, p1, p2}, Lcom/instagram/android/directshare/f/b;-><init>(Lcom/instagram/android/directshare/f/a;J)V

    invoke-virtual {v1, v2}, Lcom/instagram/f/a/a/d;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/instagram/android/directshare/f/a;->a:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    goto :goto_0
.end method

.method private static declared-synchronized c()V
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/instagram/android/directshare/f/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/android/directshare/f/a;->b:Lcom/instagram/android/directshare/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 33
    :goto_0
    monitor-exit v1

    return-void

    .line 32
    :cond_0
    :try_start_1
    new-instance v0, Lcom/instagram/android/directshare/f/a;

    invoke-direct {v0}, Lcom/instagram/android/directshare/f/a;-><init>()V

    sput-object v0, Lcom/instagram/android/directshare/f/a;->b:Lcom/instagram/android/directshare/f/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/instagram/common/x/a;->a()Lcom/instagram/common/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/x/a;->b()V

    .line 42
    invoke-static {}, Lcom/instagram/android/directshare/f/c;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    sget-object v0, Lcom/instagram/android/directshare/f/a;->a:Ljava/lang/Class;

    .line 44
    invoke-static {}, Lcom/instagram/android/directshare/f/c;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/directshare/f/a;->a(J)V

    .line 46
    :cond_0
    return-void
.end method
