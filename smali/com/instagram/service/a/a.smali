.class public Lcom/instagram/service/a/a;
.super Ljava/lang/Object;
.source "AuthHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final d:Lcom/instagram/service/a/a;


# instance fields
.field private b:Lcom/instagram/user/c/a;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/instagram/service/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/service/a/a;->a:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/instagram/service/a/a;

    invoke-direct {v0}, Lcom/instagram/service/a/a;-><init>()V

    sput-object v0, Lcom/instagram/service/a/a;->d:Lcom/instagram/service/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/instagram/service/a/a;->c:J

    .line 33
    return-void
.end method

.method public static a()Lcom/instagram/service/a/a;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/instagram/service/a/a;->d:Lcom/instagram/service/a/a;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AuthHelper.BROADCAST_USER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v1, "userid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "loggedin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    invoke-static {v0}, Lcom/instagram/common/y/d;->b(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/a/b;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/instagram/user/c/a;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;

    if-nez v0, :cond_1

    .line 38
    :try_start_0
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/a/b;->h()Ljava/lang/String;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-static {v0}, Lcom/instagram/user/b/b;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;

    .line 44
    iget-object v0, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/service/a/a;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final b(Lcom/instagram/user/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 80
    :try_start_0
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    invoke-static {p1}, Lcom/instagram/user/b/b;->a(Lcom/instagram/user/c/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/l/a/b;->b(Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to write current user"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Lcom/instagram/user/c/a;)V
    .locals 6
    .parameter

    .prologue
    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instagram/service/a/a;->c:J

    const-wide/32 v4, 0x2255100

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/instagram/service/a/a;->b(Lcom/instagram/user/c/a;)V

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/service/a/a;->c:J

    .line 94
    :cond_0
    return-void
.end method

.method public final d(Lcom/instagram/user/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/instagram/service/a/a;->b(Lcom/instagram/user/c/a;)V

    .line 98
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/service/a/a;->a(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/service/a/a;->a(Ljava/lang/String;Z)V

    .line 105
    :cond_0
    iput-object v2, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;

    .line 106
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/l/a/b;->b(Ljava/lang/String;)V

    .line 107
    return-void
.end method
