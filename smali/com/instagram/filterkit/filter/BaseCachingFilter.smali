.class public abstract Lcom/instagram/filterkit/filter/BaseCachingFilter;
.super Ljava/lang/Object;
.source "BaseCachingFilter.java"

# interfaces
.implements Lcom/instagram/filterkit/filter/IgFilter;


# instance fields
.field private a:Lcom/instagram/filterkit/e/b;

.field protected b:Z

.field private c:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->b:Z

    .line 19
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->b:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->c:Z

    .line 23
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public B_()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->n()V

    .line 78
    return-void
.end method

.method public final D_()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->c:Z

    return v0
.end method

.method public final E_()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->b:Z

    return v0
.end method

.method protected final a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-static {p2}, Lcom/instagram/filterkit/e/d;->a(Lcom/instagram/filterkit/e/c;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    invoke-virtual {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passing in a null output surface to an overlay filter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->c:Z

    if-eqz v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;

    invoke-interface {v1}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 32
    invoke-virtual {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a_(Lcom/instagram/filterkit/d/c;)V

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;

    if-nez v0, :cond_2

    .line 35
    invoke-interface {p2}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/instagram/filterkit/d/c;->a(ILcom/instagram/filterkit/d/e;)Lcom/instagram/filterkit/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;

    .line 44
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->b:Z

    .line 46
    :goto_1
    return-object v0

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;

    if-eqz v0, :cond_4

    .line 40
    invoke-virtual {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a_(Lcom/instagram/filterkit/d/c;)V

    .line 42
    :cond_4
    invoke-interface {p2}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(I)Lcom/instagram/filterkit/e/b;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, p2

    goto :goto_1
.end method

.method public a(Lcom/instagram/filterkit/d/c;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;

    invoke-virtual {p1, v0, p0}, Lcom/instagram/filterkit/d/c;->c(Lcom/instagram/filterkit/e/b;Lcom/instagram/filterkit/d/e;)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;

    .line 109
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->c:Z

    .line 57
    return-void
.end method

.method public final a_(Lcom/instagram/filterkit/d/c;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;

    invoke-virtual {p1, v0, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;

    .line 73
    return-void
.end method

.method public final c()Lcom/instagram/filterkit/e/b;
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->c:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method protected final n()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->b:Z

    .line 86
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
