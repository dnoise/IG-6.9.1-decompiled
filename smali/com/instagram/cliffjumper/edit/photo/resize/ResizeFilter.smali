.class public Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;
.super Ljava/lang/Object;
.source "ResizeFilter.java"

# interfaces
.implements Lcom/instagram/common/analytics/g;
.implements Lcom/instagram/filterkit/filter/IgFilter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Lcom/instagram/filterkit/filter/IgFilter;

.field private d:Lcom/instagram/filterkit/filter/IgFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/d;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/d;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    const-class v0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;

    .line 50
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;

    .line 41
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/a/b;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b:Z

    .line 42
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "useAdvancedResize"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;

    .line 50
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;

    .line 45
    iput-boolean p1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b:Z

    .line 46
    return-void
.end method

.method synthetic constructor <init>(ZB)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;-><init>(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 160
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/b;

    const-string v2, "resize"

    invoke-direct {v1, v2, p0}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 164
    return-void
.end method

.method private b(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const v4, 0x3ff33333

    .line 76
    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    move v2, v0

    move v0, v1

    .line 78
    :goto_0
    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->c()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_0

    .line 83
    :goto_1
    if-le v2, v1, :cond_0

    .line 87
    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->c()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    .line 88
    invoke-static {v0}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;

    move-result-object v0

    .line 90
    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v3, p1, p2, v0}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/e/b;

    .line 92
    invoke-virtual {p1, p2, v5}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 94
    add-int/lit8 v2, v2, -0x1

    move-object p2, v0

    .line 95
    goto :goto_1

    .line 98
    :cond_0
    invoke-static {p3}, Lcom/instagram/filterkit/e/d;->a(Lcom/instagram/filterkit/e/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :goto_2
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0, p1, p2, p3}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v0

    .line 101
    invoke-virtual {p1, p2, v5}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 102
    return-object v0

    .line 98
    :cond_1
    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;

    move-result-object p3

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_1
.end method


# virtual methods
.method public final B_()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->B_()V

    .line 136
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->B_()V

    .line 137
    return-void
.end method

.method public final D_()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->D_()Z

    move-result v0

    return v0
.end method

.method public final E_()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->E_()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->E_()Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b:Z

    if-nez v0, :cond_0

    .line 55
    const-string v0, "identity_preference"

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->a(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0, p1, p2, p3}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    const-string v1, "advanced"

    invoke-direct {p0, v1}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->a:Ljava/lang/Class;

    const-string v1, "Advanced resize failed"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 66
    iput-boolean v2, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b:Z

    .line 67
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0, p1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;)V

    .line 68
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/l/a/b;->d(Z)Z

    .line 69
    const-string v0, "identity_fallback"

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->a(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/instagram/filterkit/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0, p1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 113
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0, p1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 114
    return-void
.end method

.method public final a_(Lcom/instagram/filterkit/d/c;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0, p1}, Lcom/instagram/filterkit/filter/IgFilter;->a_(Lcom/instagram/filterkit/d/c;)V

    .line 130
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0, p1}, Lcom/instagram/filterkit/filter/IgFilter;->a_(Lcom/instagram/filterkit/d/c;)V

    .line 131
    return-void
.end method

.method public final c()Lcom/instagram/filterkit/e/b;
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->c()Lcom/instagram/filterkit/e/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->c()Lcom/instagram/filterkit/e/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "ig_filter"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
