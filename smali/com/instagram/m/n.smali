.class final Lcom/instagram/m/n;
.super Ljava/lang/Object;
.source "QuickExperimentManagerImpl.java"

# interfaces
.implements Lcom/instagram/common/l/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/l/a/h",
        "<",
        "Lcom/instagram/m/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/m/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/m/n;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/m/n;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)Lcom/instagram/m/i;
    .locals 2
    .parameter

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/instagram/m/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/m/i;

    .line 46
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/instagram/m/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/instagram/m/k;-><init>(Ljava/lang/String;B)V

    .line 48
    sget-object v1, Lcom/instagram/m/n;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()Lcom/instagram/m/i;
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-direct {p0, v0}, Lcom/instagram/m/n;->a(Ljava/lang/String;)Lcom/instagram/m/i;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-static {}, Lcom/instagram/common/z/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    invoke-direct {p0, v0}, Lcom/instagram/m/n;->a(Ljava/lang/String;)Lcom/instagram/m/i;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Lcom/instagram/m/k;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instagram/m/k;-><init>(Ljava/lang/String;B)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/m/n;->b()Lcom/instagram/m/i;

    move-result-object v0

    return-object v0
.end method
