.class public final Lcom/instagram/android/a/n;
.super Ljava/lang/Object;
.source "RecommendedUserAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/support/v4/app/an;

.field private c:Z

.field private d:Landroid/support/v4/app/s;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Lcom/instagram/user/follow/h;

.field private l:Lcom/instagram/android/a/b/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/instagram/android/a/n;->a:Landroid/content/Context;

    .line 197
    iput-boolean v0, p0, Lcom/instagram/android/a/n;->c:Z

    .line 198
    iput-boolean v0, p0, Lcom/instagram/android/a/n;->e:Z

    .line 199
    iput-boolean v0, p0, Lcom/instagram/android/a/n;->f:Z

    .line 200
    iput-boolean v0, p0, Lcom/instagram/android/a/n;->g:Z

    .line 201
    iput-boolean v0, p0, Lcom/instagram/android/a/n;->h:Z

    .line 202
    iput-boolean v0, p0, Lcom/instagram/android/a/n;->i:Z

    .line 203
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/android/a/n;
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/a/n;->f:Z

    .line 228
    return-object p0
.end method

.method public final a(I)Lcom/instagram/android/a/n;
    .locals 0
    .parameter

    .prologue
    .line 247
    iput p1, p0, Lcom/instagram/android/a/n;->j:I

    .line 248
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/an;)Lcom/instagram/android/a/n;
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/instagram/android/a/n;->b:Landroid/support/v4/app/an;

    .line 213
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/s;)Lcom/instagram/android/a/n;
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/instagram/android/a/n;->d:Landroid/support/v4/app/s;

    .line 218
    return-object p0
.end method

.method public final a(Lcom/instagram/android/a/b/f;)Lcom/instagram/android/a/n;
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/instagram/android/a/n;->l:Lcom/instagram/android/a/b/f;

    .line 260
    return-object p0
.end method

.method public final a(Lcom/instagram/user/follow/h;)Lcom/instagram/android/a/n;
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/instagram/android/a/n;->k:Lcom/instagram/user/follow/h;

    .line 254
    return-object p0
.end method

.method public final a(Z)Lcom/instagram/android/a/n;
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/instagram/android/a/n;->c:Z

    .line 208
    return-object p0
.end method

.method public final b()Lcom/instagram/android/a/n;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/a/n;->g:Z

    .line 233
    return-object p0
.end method

.method public final b(Z)Lcom/instagram/android/a/n;
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/instagram/android/a/n;->e:Z

    .line 223
    return-object p0
.end method

.method public final c()Lcom/instagram/android/a/n;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/a/n;->h:Z

    .line 238
    return-object p0
.end method

.method public final d()Lcom/instagram/android/a/n;
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/a/n;->i:Z

    .line 243
    return-object p0
.end method

.method public final e()Lcom/instagram/android/a/m;
    .locals 13

    .prologue
    .line 264
    new-instance v0, Lcom/instagram/android/a/m;

    iget-object v1, p0, Lcom/instagram/android/a/n;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/a/n;->b:Landroid/support/v4/app/an;

    iget-object v3, p0, Lcom/instagram/android/a/n;->d:Landroid/support/v4/app/s;

    iget-boolean v4, p0, Lcom/instagram/android/a/n;->c:Z

    iget-boolean v5, p0, Lcom/instagram/android/a/n;->e:Z

    iget-boolean v6, p0, Lcom/instagram/android/a/n;->f:Z

    iget-boolean v7, p0, Lcom/instagram/android/a/n;->g:Z

    iget-boolean v8, p0, Lcom/instagram/android/a/n;->h:Z

    iget-boolean v9, p0, Lcom/instagram/android/a/n;->i:Z

    iget v10, p0, Lcom/instagram/android/a/n;->j:I

    iget-object v11, p0, Lcom/instagram/android/a/n;->l:Lcom/instagram/android/a/b/f;

    iget-object v12, p0, Lcom/instagram/android/a/n;->k:Lcom/instagram/user/follow/h;

    invoke-direct/range {v0 .. v12}, Lcom/instagram/android/a/m;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZZZZZILcom/instagram/android/a/b/f;Lcom/instagram/user/follow/h;)V

    return-object v0
.end method
