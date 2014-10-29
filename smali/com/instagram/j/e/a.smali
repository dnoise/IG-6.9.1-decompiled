.class public final Lcom/instagram/j/e/a;
.super Ljava/lang/Object;
.source "NewsfeedYouStore.java"


# static fields
.field private static final a:Lcom/instagram/j/e/a;


# instance fields
.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/instagram/feed/f/a;

.field private d:Lcom/instagram/common/a/a/k;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/instagram/j/e/a;

    invoke-direct {v0}, Lcom/instagram/j/e/a;-><init>()V

    sput-object v0, Lcom/instagram/j/e/a;->a:Lcom/instagram/j/e/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/j/e/a;->b:Ljava/util/HashSet;

    .line 45
    new-instance v0, Lcom/instagram/common/a/a/o;

    invoke-direct {v0}, Lcom/instagram/common/a/a/o;-><init>()V

    iput-object v0, p0, Lcom/instagram/j/e/a;->d:Lcom/instagram/common/a/a/k;

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/j/e/a;->l:Ljava/lang/Long;

    .line 59
    invoke-static {}, Lcom/instagram/common/p/b/b;->a()Lcom/instagram/common/p/b/b;

    move-result-object v0

    new-instance v1, Lcom/instagram/j/e/b;

    invoke-direct {v1, p0}, Lcom/instagram/j/e/b;-><init>(Lcom/instagram/j/e/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/p/b/b;->a(Lcom/instagram/common/p/b/a;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/instagram/j/e/a;Lcom/instagram/feed/f/a;)Lcom/instagram/feed/f/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/instagram/j/e/a;->c:Lcom/instagram/feed/f/a;

    return-object p1
.end method

.method public static a()Lcom/instagram/j/e/a;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/instagram/j/e/a;->a:Lcom/instagram/j/e/a;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/j/e/a;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/j/e/a;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/j/e/a;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/instagram/j/e/a;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/j/e/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/instagram/j/e/a;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/j/e/a;)Lcom/instagram/feed/f/a;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/j/e/a;->c:Lcom/instagram/feed/f/a;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/j/e/a;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/instagram/j/e/a;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/instagram/j/e/a;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/instagram/j/e/a;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/instagram/j/e/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/instagram/j/e/a;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/instagram/j/e/a;)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/j/e/a;->l:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/j/e/a;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/instagram/j/e/a;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic m()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/instagram/j/e/a;->o()V

    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/instagram/j/e/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/instagram/j/e/a;->d:Lcom/instagram/common/a/a/k;

    new-instance v1, Lcom/instagram/j/b/a/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/instagram/j/b/a/b;-><init>(Lcom/instagram/feed/f/a;)V

    new-instance v2, Lcom/instagram/j/e/c;

    invoke-direct {v2, p0}, Lcom/instagram/j/e/c;-><init>(Lcom/instagram/j/e/a;)V

    invoke-virtual {v1, v2}, Lcom/instagram/j/b/a/b;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 87
    :cond_0
    return-void
.end method

.method private static o()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "NewsfeedYouFragment.UPDATE_NEWSFEED_YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 146
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/instagram/j/e/a;->k:Z

    .line 95
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/instagram/j/e/a;->n()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/j/e/a;->i:Z

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/j/e/a;->l:Ljava/lang/Long;

    .line 70
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/j/e/a;->i:Z

    .line 78
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/instagram/j/e/a;->c:Lcom/instagram/feed/f/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/instagram/j/e/a;->j:Z

    return v0
.end method

.method public final f()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/j/e/a;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/instagram/j/e/a;->k:Z

    return v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/instagram/j/e/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/j/e/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/instagram/j/e/a;->g:Ljava/util/List;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/instagram/j/e/a;->h:Ljava/util/List;

    return-object v0
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/instagram/j/e/a;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/instagram/j/e/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/instagram/j/e/a;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/instagram/j/e/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/instagram/j/e/a;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/instagram/j/e/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/instagram/j/e/a;->h:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/instagram/j/e/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 138
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/j/e/a;->c:Lcom/instagram/feed/f/a;

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "NewsfeedYouFragment.UPDATE_NEWSFEED_YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 141
    return-void
.end method
