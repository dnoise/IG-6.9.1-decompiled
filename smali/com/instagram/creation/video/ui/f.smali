.class public final Lcom/instagram/creation/video/ui/f;
.super Lcom/instagram/creation/video/gl/v;
.source "PhotoView.java"


# instance fields
.field private j:Lcom/instagram/creation/video/ui/h;

.field private k:[Lcom/instagram/creation/video/ui/j;

.field private l:Lcom/instagram/creation/video/ui/g;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Landroid/graphics/Rect;

.field private q:Landroid/graphics/Rect;

.field private r:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/v;-><init>()V

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/instagram/creation/video/ui/j;

    iput-object v0, p0, Lcom/instagram/creation/video/ui/f;->k:[Lcom/instagram/creation/video/ui/j;

    .line 51
    iput v1, p0, Lcom/instagram/creation/video/ui/f;->m:I

    .line 52
    iput v1, p0, Lcom/instagram/creation/video/ui/f;->n:I

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/ui/f;->p:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/ui/f;->q:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/ui/f;->r:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/instagram/creation/video/ui/i;

    invoke-direct {v0, p0}, Lcom/instagram/creation/video/ui/i;-><init>(Lcom/instagram/creation/video/ui/f;)V

    iput-object v0, p0, Lcom/instagram/creation/video/ui/f;->j:Lcom/instagram/creation/video/ui/h;

    .line 71
    return-void
.end method

.method static synthetic a(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/instagram/creation/video/ui/f;->b(III)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/instagram/creation/video/ui/f;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/instagram/creation/video/ui/f;->h()I

    move-result v0

    return v0
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/creation/video/ui/f;->p:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 134
    invoke-direct {p0}, Lcom/instagram/creation/video/ui/f;->g()V

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/gl/c;Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/instagram/creation/video/ui/f;->b(Lcom/instagram/creation/video/gl/c;Landroid/graphics/Rect;)V

    return-void
.end method

.method private static b(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    rem-int/lit16 v0, p0, 0xb4

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private static b(Lcom/instagram/creation/video/gl/c;Landroid/graphics/Rect;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 228
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/instagram/creation/video/gl/c;->a(FFFF)V

    .line 229
    return-void
.end method

.method private g()V
    .locals 8

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/f;->b()I

    move-result v0

    .line 108
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/f;->c()I

    move-result v1

    .line 109
    iget v2, p0, Lcom/instagram/creation/video/ui/f;->n:I

    rem-int/lit16 v2, v2, 0xb4

    if-eqz v2, :cond_0

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/instagram/creation/video/ui/f;->p:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 115
    iget-object v3, p0, Lcom/instagram/creation/video/ui/f;->p:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 116
    iget-object v4, p0, Lcom/instagram/creation/video/ui/f;->p:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 117
    iget-object v5, p0, Lcom/instagram/creation/video/ui/f;->p:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 120
    iget v6, p0, Lcom/instagram/creation/video/ui/f;->n:I

    sparse-switch v6, :sswitch_data_0

    .line 127
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "compensation = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/instagram/creation/video/ui/f;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CameraRelativeFrame = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/ui/f;->p:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCameraRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/ui/f;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    return-void

    .line 121
    :sswitch_0
    iget-object v0, p0, Lcom/instagram/creation/video/ui/f;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 122
    :sswitch_1
    iget-object v1, p0, Lcom/instagram/creation/video/ui/f;->q:Landroid/graphics/Rect;

    sub-int v5, v0, v5

    sub-int/2addr v0, v3

    invoke-virtual {v1, v5, v2, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 123
    :sswitch_2
    iget-object v6, p0, Lcom/instagram/creation/video/ui/f;->q:Landroid/graphics/Rect;

    sub-int v4, v1, v4

    sub-int v5, v0, v5

    sub-int/2addr v1, v2

    sub-int/2addr v0, v3

    invoke-virtual {v6, v4, v5, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 124
    :sswitch_3
    iget-object v0, p0, Lcom/instagram/creation/video/ui/f;->q:Landroid/graphics/Rect;

    sub-int v4, v1, v4

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_0
    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private h()I
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lcom/instagram/creation/video/ui/f;->n:I

    iget v1, p0, Lcom/instagram/creation/video/ui/f;->m:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method


# virtual methods
.method protected final a(Lcom/instagram/creation/video/gl/c;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 242
    iget-boolean v0, p0, Lcom/instagram/creation/video/ui/f;->o:Z

    if-eq v1, v0, :cond_0

    .line 244
    iput-boolean v1, p0, Lcom/instagram/creation/video/ui/f;->o:Z

    .line 245
    iget-object v0, p0, Lcom/instagram/creation/video/ui/f;->l:Lcom/instagram/creation/video/ui/g;

    invoke-interface {v0}, Lcom/instagram/creation/video/ui/g;->X()V

    .line 251
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/creation/video/ui/f;->o:Z

    .line 252
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/creation/video/ui/f;->j:Lcom/instagram/creation/video/ui/h;

    invoke-interface {v1}, Lcom/instagram/creation/video/ui/h;->b()Lcom/instagram/creation/video/ui/j;

    move-result-object v1

    iget v1, v1, Lcom/instagram/creation/video/ui/j;->a:I

    iget-object v2, p0, Lcom/instagram/creation/video/ui/f;->j:Lcom/instagram/creation/video/ui/h;

    invoke-interface {v2}, Lcom/instagram/creation/video/ui/h;->b()Lcom/instagram/creation/video/ui/j;

    move-result-object v2

    iget v2, v2, Lcom/instagram/creation/video/ui/j;->b:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 255
    iget-object v1, p0, Lcom/instagram/creation/video/ui/f;->j:Lcom/instagram/creation/video/ui/h;

    invoke-interface {v1, p1, v0}, Lcom/instagram/creation/video/ui/h;->a(Lcom/instagram/creation/video/gl/c;Landroid/graphics/Rect;)V

    .line 256
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/ui/g;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/instagram/creation/video/ui/f;->l:Lcom/instagram/creation/video/ui/g;

    .line 264
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/ui/k;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lcom/instagram/creation/video/ui/f;->j:Lcom/instagram/creation/video/ui/h;

    invoke-interface {v0, p1}, Lcom/instagram/creation/video/ui/h;->a(Lcom/instagram/creation/video/ui/k;)V

    .line 75
    iget-object v0, p0, Lcom/instagram/creation/video/ui/f;->j:Lcom/instagram/creation/video/ui/h;

    invoke-interface {v0}, Lcom/instagram/creation/video/ui/h;->a()V

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/creation/video/ui/f;->j:Lcom/instagram/creation/video/ui/h;

    invoke-interface {v1}, Lcom/instagram/creation/video/ui/h;->b()Lcom/instagram/creation/video/ui/j;

    move-result-object v1

    iget v1, v1, Lcom/instagram/creation/video/ui/j;->a:I

    iget-object v2, p0, Lcom/instagram/creation/video/ui/f;->j:Lcom/instagram/creation/video/ui/h;

    invoke-interface {v2}, Lcom/instagram/creation/video/ui/h;->b()Lcom/instagram/creation/video/ui/j;

    move-result-object v2

    iget v2, v2, Lcom/instagram/creation/video/ui/j;->b:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/ui/f;->a(Landroid/graphics/Rect;)V

    .line 77
    return-void
.end method

.method protected final e()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/f;->d()Lcom/instagram/creation/video/gl/q;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Lcom/instagram/creation/video/gl/q;->getDisplayRotation()I

    move-result v1

    .line 87
    invoke-interface {v0}, Lcom/instagram/creation/video/gl/q;->getCompensation()I

    move-result v0

    .line 88
    iget v2, p0, Lcom/instagram/creation/video/ui/f;->m:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/instagram/creation/video/ui/f;->n:I

    if-eq v2, v0, :cond_1

    .line 90
    :cond_0
    iput v1, p0, Lcom/instagram/creation/video/ui/f;->m:I

    .line 91
    iput v0, p0, Lcom/instagram/creation/video/ui/f;->n:I

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/ui/f;->j:Lcom/instagram/creation/video/ui/h;

    invoke-interface {v0}, Lcom/instagram/creation/video/ui/h;->a()V

    .line 99
    invoke-direct {p0}, Lcom/instagram/creation/video/ui/f;->g()V

    .line 100
    return-void
.end method
