.class public Lcom/instagram/common/ui/widget/imageview/IgImageView;
.super Landroid/widget/ImageView;
.source "IgImageView.java"


# instance fields
.field protected a:Z

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Z

.field private e:Lcom/instagram/common/ui/widget/imageview/f;

.field private f:Lcom/instagram/common/ui/widget/imageview/g;

.field private g:Lcom/instagram/common/g/b/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a:Z

    .line 22
    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->d:Z

    .line 26
    new-instance v0, Lcom/instagram/common/ui/widget/imageview/e;

    invoke-direct {v0, p0}, Lcom/instagram/common/ui/widget/imageview/e;-><init>(Lcom/instagram/common/ui/widget/imageview/IgImageView;)V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->g:Lcom/instagram/common/g/b/k;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a:Z

    .line 22
    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->d:Z

    .line 26
    new-instance v0, Lcom/instagram/common/ui/widget/imageview/e;

    invoke-direct {v0, p0}, Lcom/instagram/common/ui/widget/imageview/e;-><init>(Lcom/instagram/common/ui/widget/imageview/IgImageView;)V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->g:Lcom/instagram/common/g/b/k;

    .line 66
    invoke-direct {p0, p2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a(Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a:Z

    .line 22
    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->d:Z

    .line 26
    new-instance v0, Lcom/instagram/common/ui/widget/imageview/e;

    invoke-direct {v0, p0}, Lcom/instagram/common/ui/widget/imageview/e;-><init>(Lcom/instagram/common/ui/widget/imageview/IgImageView;)V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->g:Lcom/instagram/common/g/b/k;

    .line 71
    invoke-direct {p0, p2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a(Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/bb;->IgImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    sget v1, Lcom/facebook/bb;->IgImageView_placeholder:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 78
    if-eqz v1, :cond_0

    .line 79
    new-instance v2, Lcom/instagram/common/ui/widget/imageview/c;

    invoke-direct {v2, v1}, Lcom/instagram/common/ui/widget/imageview/c;-><init>(I)V

    iput-object v2, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->c:Landroid/graphics/drawable/Drawable;

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b(Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method static synthetic b(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Lcom/instagram/common/ui/widget/imageview/f;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->e:Lcom/instagram/common/ui/widget/imageview/f;

    return-object v0
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a:Z

    .line 99
    iput-object p1, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b:Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/instagram/common/g/b/c;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->g:Lcom/instagram/common/g/b/k;

    invoke-direct {v0, p1, v1}, Lcom/instagram/common/g/b/c;-><init>(Ljava/lang/String;Lcom/instagram/common/g/b/k;)V

    iget-boolean v1, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->d:Z

    invoke-virtual {v0, v1}, Lcom/instagram/common/g/b/c;->a(Z)Lcom/instagram/common/g/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/g/b/c;->a()Lcom/instagram/common/g/b/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/common/g/b/c;->b(Z)Lcom/instagram/common/g/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/g/b/c;->b()V

    .line 106
    return-void
.end method

.method static synthetic c(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Lcom/instagram/common/ui/widget/imageview/g;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->f:Lcom/instagram/common/ui/widget/imageview/g;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a(Ljava/lang/String;Z)V

    .line 90
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a:Z

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    return-void
.end method

.method public setOnLoadListener(Lcom/instagram/common/ui/widget/imageview/f;)V
    .locals 0
    .parameter "onLoadListener"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->e:Lcom/instagram/common/ui/widget/imageview/f;

    .line 118
    return-void
.end method

.method public setProgressListener(Lcom/instagram/common/ui/widget/imageview/g;)V
    .locals 0
    .parameter "progressListener"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->f:Lcom/instagram/common/ui/widget/imageview/g;

    .line 110
    return-void
.end method

.method public setReportProgress(Z)V
    .locals 0
    .parameter "reportProgress"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->d:Z

    .line 114
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a(Ljava/lang/String;Z)V

    .line 86
    return-void
.end method
