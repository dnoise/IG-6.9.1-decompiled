.class public final Lcom/instagram/android/k/a/e;
.super Ljava/lang/Object;
.source "UserListAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/support/v4/app/an;

.field private c:Landroid/support/v4/app/s;

.field private d:Lcom/instagram/ui/widget/loadmore/c;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/instagram/user/follow/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/instagram/ui/widget/loadmore/f;

    invoke-direct {v0}, Lcom/instagram/ui/widget/loadmore/f;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/k/a/e;->d:Lcom/instagram/ui/widget/loadmore/c;

    .line 67
    iput-object p1, p0, Lcom/instagram/android/k/a/e;->a:Landroid/content/Context;

    .line 68
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/android/k/a/a;
    .locals 9

    .prologue
    .line 106
    new-instance v0, Lcom/instagram/android/k/a/a;

    iget-object v1, p0, Lcom/instagram/android/k/a/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/k/a/e;->b:Landroid/support/v4/app/an;

    iget-object v3, p0, Lcom/instagram/android/k/a/e;->c:Landroid/support/v4/app/s;

    iget-boolean v4, p0, Lcom/instagram/android/k/a/e;->e:Z

    iget-boolean v5, p0, Lcom/instagram/android/k/a/e;->f:Z

    iget-boolean v6, p0, Lcom/instagram/android/k/a/e;->g:Z

    iget-object v7, p0, Lcom/instagram/android/k/a/e;->h:Lcom/instagram/user/follow/h;

    iget-object v8, p0, Lcom/instagram/android/k/a/e;->d:Lcom/instagram/ui/widget/loadmore/c;

    invoke-direct/range {v0 .. v8}, Lcom/instagram/android/k/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZZLcom/instagram/user/follow/h;Lcom/instagram/ui/widget/loadmore/c;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/app/an;)Lcom/instagram/android/k/a/e;
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/instagram/android/k/a/e;->b:Landroid/support/v4/app/an;

    .line 72
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/s;)Lcom/instagram/android/k/a/e;
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/instagram/android/k/a/e;->c:Landroid/support/v4/app/s;

    .line 77
    return-object p0
.end method

.method public final a(Lcom/instagram/ui/widget/loadmore/c;)Lcom/instagram/android/k/a/e;
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/instagram/android/k/a/e;->d:Lcom/instagram/ui/widget/loadmore/c;

    .line 82
    return-object p0
.end method

.method public final a(Lcom/instagram/user/follow/h;)Lcom/instagram/android/k/a/e;
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/instagram/android/k/a/e;->h:Lcom/instagram/user/follow/h;

    .line 102
    return-object p0
.end method

.method public final a(Z)Lcom/instagram/android/k/a/e;
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/instagram/android/k/a/e;->f:Z

    .line 87
    return-object p0
.end method

.method public final b(Z)Lcom/instagram/android/k/a/e;
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/instagram/android/k/a/e;->e:Z

    .line 92
    return-object p0
.end method

.method public final c(Z)Lcom/instagram/android/k/a/e;
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/instagram/android/k/a/e;->g:Z

    .line 97
    return-object p0
.end method
