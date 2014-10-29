.class final Lcom/facebook/systrace/e;
.super Ljava/lang/Object;
.source "TraceConfig.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/util/List;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.util.ArrayList._Constructor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/systrace/i;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/systrace/e;->a:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/systrace/e;->b:Ljava/util/List;

    .line 22
    sput-boolean v1, Lcom/facebook/systrace/e;->c:Z

    .line 25
    invoke-static {}, Lcom/facebook/systrace/e;->d()V

    .line 26
    return-void
.end method

.method public static a(Lcom/facebook/systrace/i;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    sget-object v1, Lcom/facebook/systrace/e;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/facebook/systrace/e;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-boolean v0, Lcom/facebook/systrace/e;->c:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {p0}, Lcom/facebook/systrace/i;->a()V

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/facebook/systrace/e;->c:Z

    return v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/c/a/a/c;->a(Z)V

    .line 97
    invoke-static {}, Lcom/facebook/systrace/e;->e()V

    .line 98
    return-void
.end method

.method static synthetic c()V
    .locals 0

    .prologue
    .line 16
    invoke-static {}, Lcom/facebook/systrace/e;->e()V

    return-void
.end method

.method private static d()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/facebook/systrace/e;->e()V

    .line 36
    new-instance v0, Lcom/facebook/systrace/f;

    invoke-direct {v0}, Lcom/facebook/systrace/f;-><init>()V

    invoke-static {v0}, Lcom/facebook/c/a/a/a;->a(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method private static e()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/facebook/systrace/e;->g()Z

    move-result v0

    .line 61
    sget-boolean v1, Lcom/facebook/systrace/e;->c:Z

    if-eq v0, v1, :cond_0

    .line 62
    sput-boolean v0, Lcom/facebook/systrace/e;->c:Z

    .line 63
    invoke-static {}, Lcom/facebook/systrace/e;->f()V

    .line 65
    :cond_0
    return-void
.end method

.method private static f()V
    .locals 4

    .prologue
    .line 68
    sget-object v2, Lcom/facebook/systrace/e;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 69
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/facebook/systrace/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 70
    sget-object v0, Lcom/facebook/systrace/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/systrace/i;

    .line 71
    sget-boolean v3, Lcom/facebook/systrace/e;->c:Z

    if-eqz v3, :cond_0

    .line 72
    invoke-interface {v0}, Lcom/facebook/systrace/i;->a()V

    .line 69
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v0}, Lcom/facebook/systrace/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private static g()Z
    .locals 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 86
    sget-wide v0, Lcom/facebook/c/a/a/c;->b:J

    invoke-static {v0, v1}, Lcom/facebook/c/a/a/c;->a(J)Z

    move-result v0

    .line 90
    :goto_0
    return v0

    .line 87
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 88
    invoke-static {}, Lcom/facebook/systrace/g;->a()Z

    move-result v0

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
