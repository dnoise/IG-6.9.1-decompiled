.class public final Lcom/instagram/android/people/widget/e;
.super Ljava/lang/Object;
.source "PeopleTaggingUserListAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/support/v4/app/an;

.field private c:Landroid/support/v4/app/s;

.field private d:Lcom/instagram/model/people/b;

.field private e:Z

.field private f:Z

.field private g:Lcom/instagram/user/follow/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/android/people/widget/e;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/e;->f:Z

    .line 58
    return-object p0
.end method

.method public final a(Landroid/content/Context;)Lcom/instagram/android/people/widget/e;
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/instagram/android/people/widget/e;->a:Landroid/content/Context;

    .line 43
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/an;)Lcom/instagram/android/people/widget/e;
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/instagram/android/people/widget/e;->b:Landroid/support/v4/app/an;

    .line 48
    return-object p0
.end method

.method public final a(Lcom/instagram/model/people/b;)Lcom/instagram/android/people/widget/e;
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/android/people/widget/e;->d:Lcom/instagram/model/people/b;

    .line 38
    return-object p0
.end method

.method public final a(Lcom/instagram/user/follow/h;)Lcom/instagram/android/people/widget/e;
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/instagram/android/people/widget/e;->g:Lcom/instagram/user/follow/h;

    .line 69
    return-object p0
.end method

.method public final b()Lcom/instagram/android/people/widget/e;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/e;->e:Z

    .line 63
    return-object p0
.end method

.method public final c()Lcom/instagram/android/people/widget/d;
    .locals 9

    .prologue
    .line 73
    new-instance v0, Lcom/instagram/android/people/widget/d;

    iget-object v1, p0, Lcom/instagram/android/people/widget/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/people/widget/e;->b:Landroid/support/v4/app/an;

    iget-object v3, p0, Lcom/instagram/android/people/widget/e;->c:Landroid/support/v4/app/s;

    iget-boolean v4, p0, Lcom/instagram/android/people/widget/e;->e:Z

    iget-boolean v5, p0, Lcom/instagram/android/people/widget/e;->f:Z

    iget-object v6, p0, Lcom/instagram/android/people/widget/e;->d:Lcom/instagram/model/people/b;

    iget-object v7, p0, Lcom/instagram/android/people/widget/e;->g:Lcom/instagram/user/follow/h;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/instagram/android/people/widget/d;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/model/people/b;Lcom/instagram/user/follow/h;B)V

    return-object v0
.end method
