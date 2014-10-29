.class public final Lcom/instagram/base/a/a/a;
.super Ljava/lang/Object;
.source "FragmentNavigator.java"


# instance fields
.field private final a:Landroid/support/v4/app/s;

.field private b:Landroid/support/v4/app/Fragment;

.field private c:Landroid/os/Bundle;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/s;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/base/a/a/a;->e:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/base/a/a/a;->f:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/instagram/base/a/a/a;->g:Z

    .line 40
    iput-boolean v1, p0, Lcom/instagram/base/a/a/a;->i:Z

    .line 43
    iput-object p1, p0, Lcom/instagram/base/a/a/a;->a:Landroid/support/v4/app/s;

    .line 44
    return-void
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/base/a/a/a;->a:Landroid/support/v4/app/s;

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 65
    instance-of v1, v0, Lcom/instagram/common/analytics/g;

    if-eqz v1, :cond_0

    .line 66
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v1

    check-cast v0, Lcom/instagram/common/analytics/g;

    iget-object v2, p0, Lcom/instagram/base/a/a/a;->a:Landroid/support/v4/app/s;

    invoke-virtual {v2}, Landroid/support/v4/app/s;->g()I

    move-result v2

    iget-object v3, p0, Lcom/instagram/base/a/a/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/g;ILjava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/instagram/base/a/a/a;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/base/a/a/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/instagram/base/a/a/a;->b:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/instagram/base/a/a/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/instagram/base/a/a/a;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 77
    iget-boolean v1, p0, Lcom/instagram/base/a/a/a;->i:Z

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/ag;

    .line 86
    :cond_2
    sget v1, Lcom/instagram/base/a/a/b;->a:I

    if-ne p1, v1, :cond_5

    .line 87
    sget v1, Lcom/facebook/av;->layout_container_main:I

    iget-object v2, p0, Lcom/instagram/base/a/a/a;->b:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcom/instagram/base/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 92
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/instagram/base/a/a/a;->e:Z

    if-eqz v1, :cond_4

    .line 93
    iget-object v1, p0, Lcom/instagram/base/a/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 96
    :cond_4
    iget-boolean v1, p0, Lcom/instagram/base/a/a/a;->g:Z

    if-eqz v1, :cond_6

    .line 97
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->c()I

    .line 110
    :goto_1
    iget-object v0, p0, Lcom/instagram/base/a/a/a;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()Z

    .line 111
    return-void

    .line 88
    :cond_5
    sget v1, Lcom/instagram/base/a/a/b;->b:I

    if-ne p1, v1, :cond_3

    .line 89
    sget v1, Lcom/facebook/av;->layout_container_main:I

    iget-object v2, p0, Lcom/instagram/base/a/a/a;->b:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcom/instagram/base/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    goto :goto_0

    .line 100
    :cond_6
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 101
    :catch_0
    move-exception v1

    .line 103
    invoke-static {}, Lcom/instagram/common/t/b;->a()Lcom/instagram/common/t/b;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nav_events: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/common/t/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 104
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/instagram/base/a/a/a;->b:Landroid/support/v4/app/Fragment;

    .line 125
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/instagram/base/a/a/a;->b:Landroid/support/v4/app/Fragment;

    .line 133
    iput-object p2, p0, Lcom/instagram/base/a/a/a;->c:Landroid/os/Bundle;

    .line 134
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/instagram/base/a/a/a;->d:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/instagram/base/a/a/b;->b:I

    invoke-direct {p0, v0}, Lcom/instagram/base/a/a/a;->a(I)V

    .line 52
    return-void
.end method

.method public final b()Lcom/instagram/base/a/a/a;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/base/a/a/a;->e:Z

    .line 159
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/instagram/base/a/a/a;->h:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public final c()Lcom/instagram/base/a/a/a;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/base/a/a/a;->g:Z

    .line 176
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/instagram/base/a/a/a;->f:Ljava/lang/String;

    .line 167
    return-object p0
.end method
