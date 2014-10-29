.class final Lcom/facebook/widget/c;
.super Ljava/lang/Object;
.source "LoginButton.java"


# instance fields
.field private a:Lcom/facebook/cf;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/g/p;

.field private d:Lcom/facebook/widget/f;

.field private e:Lcom/facebook/cg;

.field private f:Lcom/facebook/cc;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/facebook/cf;->c:Lcom/facebook/cf;

    iput-object v0, p0, Lcom/facebook/widget/c;->a:Lcom/facebook/cf;

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/c;->b:Ljava/util/List;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/c;->c:Lcom/facebook/g/p;

    .line 73
    sget-object v0, Lcom/facebook/cg;->a:Lcom/facebook/cg;

    iput-object v0, p0, Lcom/facebook/widget/c;->e:Lcom/facebook/cg;

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/c;)Lcom/facebook/cf;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/widget/c;->a:Lcom/facebook/cf;

    return-object v0
.end method

.method private static a(Ljava/util/List;Lcom/facebook/g/p;Lcom/facebook/bo;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/g/p;",
            "Lcom/facebook/bo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 116
    sget-object v0, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;

    invoke-virtual {v0, p1}, Lcom/facebook/g/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p0}, Lcom/facebook/g/t;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Permissions for publish actions cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/facebook/bo;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p2}, Lcom/facebook/bo;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/g/t;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-static {}, Lcom/facebook/widget/LoginButton;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot set additional permissions when session is already open."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/widget/c;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/widget/c;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/widget/c;)Lcom/facebook/cg;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/widget/c;->e:Lcom/facebook/cg;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/widget/c;)Lcom/facebook/g/p;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/widget/c;->c:Lcom/facebook/g/p;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/widget/c;)Lcom/facebook/cc;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/widget/c;->f:Lcom/facebook/cc;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/widget/c;)Lcom/facebook/widget/f;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/widget/c;->d:Lcom/facebook/widget/f;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/widget/f;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/widget/c;->d:Lcom/facebook/widget/f;

    return-object v0
.end method

.method public final a(Lcom/facebook/cc;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/facebook/widget/c;->f:Lcom/facebook/cc;

    .line 149
    return-void
.end method

.method public final a(Lcom/facebook/cf;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/facebook/widget/c;->a:Lcom/facebook/cf;

    .line 86
    return-void
.end method

.method public final a(Lcom/facebook/cg;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/widget/c;->e:Lcom/facebook/cg;

    .line 141
    return-void
.end method

.method public final a(Lcom/facebook/widget/f;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/facebook/widget/c;->d:Lcom/facebook/widget/f;

    .line 78
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/facebook/bo;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/bo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;

    iget-object v1, p0, Lcom/facebook/widget/c;->c:Lcom/facebook/g/p;

    invoke-virtual {v0, v1}, Lcom/facebook/g/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call setReadPermissions after setPublishPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    sget-object v0, Lcom/facebook/g/p;->a:Lcom/facebook/g/p;

    invoke-static {p1, v0, p2}, Lcom/facebook/widget/c;->a(Ljava/util/List;Lcom/facebook/g/p;Lcom/facebook/bo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iput-object p1, p0, Lcom/facebook/widget/c;->b:Ljava/util/List;

    .line 99
    sget-object v0, Lcom/facebook/g/p;->a:Lcom/facebook/g/p;

    iput-object v0, p0, Lcom/facebook/widget/c;->c:Lcom/facebook/g/p;

    .line 101
    :cond_1
    return-void
.end method

.method public final b()Lcom/facebook/cf;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/widget/c;->a:Lcom/facebook/cf;

    return-object v0
.end method

.method public final b(Ljava/util/List;Lcom/facebook/bo;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/bo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lcom/facebook/g/p;->a:Lcom/facebook/g/p;

    iget-object v1, p0, Lcom/facebook/widget/c;->c:Lcom/facebook/g/p;

    invoke-virtual {v0, v1}, Lcom/facebook/g/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call setPublishPermissions after setReadPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    sget-object v0, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;

    invoke-static {p1, v0, p2}, Lcom/facebook/widget/c;->a(Ljava/util/List;Lcom/facebook/g/p;Lcom/facebook/bo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iput-object p1, p0, Lcom/facebook/widget/c;->b:Ljava/util/List;

    .line 110
    sget-object v0, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;

    iput-object v0, p0, Lcom/facebook/widget/c;->c:Lcom/facebook/g/p;

    .line 112
    :cond_1
    return-void
.end method

.method final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/widget/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public final d()Lcom/facebook/cg;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/widget/c;->e:Lcom/facebook/cg;

    return-object v0
.end method

.method public final e()Lcom/facebook/cc;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/widget/c;->f:Lcom/facebook/cc;

    return-object v0
.end method
