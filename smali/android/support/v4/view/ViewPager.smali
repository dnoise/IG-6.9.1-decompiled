.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# static fields
.field private static final a:[I

.field private static final aj:Landroid/support/v4/view/bq;

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/bi;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:I

.field private G:I

.field private H:I

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:I

.field private N:Landroid/view/VelocityTracker;

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Landroid/support/v4/widget/e;

.field private U:Landroid/support/v4/widget/e;

.field private V:Z

.field private W:Z

.field private Z:Z

.field private aa:I

.field private ab:Z

.field private ac:Landroid/support/v4/view/bm;

.field private ad:Landroid/support/v4/view/bm;

.field private ae:Landroid/support/v4/view/bl;

.field private af:Landroid/support/v4/view/bn;

.field private ag:Ljava/lang/reflect/Method;

.field private ah:I

.field private ai:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final ak:Ljava/lang/Runnable;

.field private al:I

.field private b:I

.field private c:I

.field private d:F

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/bi;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/support/v4/view/bi;

.field private final i:Landroid/graphics/Rect;

.field private j:Landroid/support/v4/view/ae;

.field private k:I

.field private l:I

.field private m:Landroid/os/Parcelable;

.field private n:Ljava/lang/ClassLoader;

.field private o:Landroid/widget/Scroller;

.field private p:Landroid/support/v4/view/bo;

.field private q:I

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:I

.field private t:I

.field private u:F

.field private v:F

.field private w:I

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    .line 119
    new-instance v0, Landroid/support/v4/view/be;

    invoke-direct {v0}, Landroid/support/v4/view/be;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/Comparator;

    .line 126
    new-instance v0, Landroid/support/v4/view/bf;

    invoke-direct {v0}, Landroid/support/v4/view/bf;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->f:Landroid/view/animation/Interpolator;

    .line 230
    new-instance v0, Landroid/support/v4/view/bq;

    invoke-direct {v0}, Landroid/support/v4/view/bq;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->aj:Landroid/support/v4/view/bq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 351
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Landroid/support/v4/view/bi;

    invoke-direct {v0}, Landroid/support/v4/view/bi;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/bi;

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->i:Landroid/graphics/Rect;

    .line 140
    iput v2, p0, Landroid/support/v4/view/ViewPager;->l:I

    .line 141
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/os/Parcelable;

    .line 142
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->n:Ljava/lang/ClassLoader;

    .line 154
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->u:F

    .line 155
    const v0, 0x7f7fffff

    iput v0, p0, Landroid/support/v4/view/ViewPager;->v:F

    .line 164
    iput v1, p0, Landroid/support/v4/view/ViewPager;->B:I

    .line 184
    iput v2, p0, Landroid/support/v4/view/ViewPager;->M:I

    .line 211
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->V:Z

    .line 212
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->W:Z

    .line 217
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->ab:Z

    .line 248
    new-instance v0, Landroid/support/v4/view/bg;

    invoke-direct {v0, p0}, Landroid/support/v4/view/bg;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ak:Ljava/lang/Runnable;

    .line 255
    iput v3, p0, Landroid/support/v4/view/ViewPager;->al:I

    .line 352
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->d()V

    .line 353
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 356
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Landroid/support/v4/view/bi;

    invoke-direct {v0}, Landroid/support/v4/view/bi;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/bi;

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->i:Landroid/graphics/Rect;

    .line 140
    iput v2, p0, Landroid/support/v4/view/ViewPager;->l:I

    .line 141
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/os/Parcelable;

    .line 142
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->n:Ljava/lang/ClassLoader;

    .line 154
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->u:F

    .line 155
    const v0, 0x7f7fffff

    iput v0, p0, Landroid/support/v4/view/ViewPager;->v:F

    .line 164
    iput v1, p0, Landroid/support/v4/view/ViewPager;->B:I

    .line 184
    iput v2, p0, Landroid/support/v4/view/ViewPager;->M:I

    .line 211
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->V:Z

    .line 212
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->W:Z

    .line 217
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->ab:Z

    .line 248
    new-instance v0, Landroid/support/v4/view/bg;

    invoke-direct {v0, p0}, Landroid/support/v4/view/bg;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ak:Ljava/lang/Runnable;

    .line 255
    iput v3, p0, Landroid/support/v4/view/ViewPager;->al:I

    .line 357
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->d()V

    .line 358
    return-void
.end method

.method private static a(F)F
    .locals 4
    .parameter

    .prologue
    .line 804
    const/high16 v0, 0x3f00

    sub-float v0, p0, v0

    .line 805
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 806
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private a(IFII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2190
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Q:I

    if-le v0, v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->O:I

    if-le v0, v1, :cond_2

    .line 2191
    if-lez p3, :cond_1

    .line 2197
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2198
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    .line 2199
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bi;

    .line 2202
    iget v0, v0, Landroid/support/v4/view/bi;->b:I

    iget v1, v1, Landroid/support/v4/view/bi;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2205
    :cond_0
    return p1

    .line 2191
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2193
    :cond_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-lt p1, v0, :cond_3

    const v0, 0x3ecccccd

    .line 2194
    :goto_1
    int-to-float v1, p1

    add-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_0

    .line 2193
    :cond_3
    const v0, 0x3f19999a

    goto :goto_1
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2603
    if-nez p1, :cond_2

    .line 2604
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2606
    :goto_0
    if-nez p2, :cond_0

    .line 2607
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    .line 2625
    :goto_1
    return-object v0

    .line 2610
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2611
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2612
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2613
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2615
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2616
    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    .line 2617
    check-cast v0, Landroid/view/ViewGroup;

    .line 2618
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2619
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2620
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2621
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2623
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 2625
    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method private a(Landroid/view/View;)Landroid/support/v4/view/bi;
    .locals 4
    .parameter

    .prologue
    .line 1372
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1373
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    .line 1374
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v3, v0, Landroid/support/v4/view/bi;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/ae;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1378
    :goto_1
    return-object v0

    .line 1372
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1378
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(I)V
    .locals 20
    .parameter

    .prologue
    .line 956
    const/4 v3, 0x0

    .line 957
    const/4 v2, 0x2

    .line 958
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->k:I

    move/from16 v0, p1

    if-eq v4, v0, :cond_23

    .line 959
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->k:I

    move/from16 v0, p1

    if-ge v2, v0, :cond_1

    const/16 v2, 0x42

    .line 960
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/ViewPager;->k:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/bi;

    move-result-object v3

    .line 961
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->k:I

    move-object v4, v3

    move v3, v2

    .line 964
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-nez v2, :cond_2

    .line 965
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->f()V

    .line 1149
    :cond_0
    :goto_2
    return-void

    .line 959
    :cond_1
    const/16 v2, 0x11

    goto :goto_0

    .line 973
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager;->A:Z

    if-eqz v2, :cond_3

    .line 975
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->f()V

    goto :goto_2

    .line 982
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v2}, Landroid/support/v4/view/ae;->a()V

    .line 988
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->B:I

    .line 989
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->k:I

    sub-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 990
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v5}, Landroid/support/v4/view/ae;->c()I

    move-result v15

    .line 991
    add-int/lit8 v5, v15, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 993
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->b:I

    if-eq v15, v2, :cond_4

    .line 996
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1000
    :goto_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Pager id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Pager class: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Problematic adapter: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 998
    :catch_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1009
    :cond_4
    const/4 v6, 0x0

    .line 1011
    const/4 v2, 0x0

    move v5, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_22

    .line 1012
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    .line 1013
    iget v7, v2, Landroid/support/v4/view/bi;->b:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/view/ViewPager;->k:I

    if-lt v7, v9, :cond_6

    .line 1014
    iget v7, v2, Landroid/support/v4/view/bi;->b:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/view/ViewPager;->k:I

    if-ne v7, v9, :cond_22

    .line 1019
    :goto_5
    if-nez v2, :cond_21

    if-lez v15, :cond_21

    .line 1020
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->k:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Landroid/support/v4/view/ViewPager;->b(II)Landroid/support/v4/view/bi;

    move-result-object v2

    move-object v14, v2

    .line 1026
    :goto_6
    if-eqz v14, :cond_19

    .line 1027
    const/4 v13, 0x0

    .line 1028
    add-int/lit8 v12, v5, -0x1

    .line 1029
    if-ltz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    .line 1030
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v16

    .line 1031
    if-gtz v16, :cond_8

    const/4 v6, 0x0

    .line 1036
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v4/view/ViewPager;->C:Z

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/lit8 v9, v9, -0x1

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1038
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/support/v4/view/ViewPager;->C:Z

    if-eqz v9, :cond_a

    add-int/lit8 v9, v15, -0x1

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/lit8 v11, v11, 0x1

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1041
    :goto_a
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/lit8 v11, v11, -0x1

    move/from16 v18, v11

    move v11, v13

    move/from16 v13, v18

    move/from16 v19, v12

    move v12, v5

    move/from16 v5, v19

    :goto_b
    if-ltz v13, :cond_10

    .line 1042
    cmpl-float v17, v11, v6

    if-ltz v17, :cond_c

    if-ge v13, v8, :cond_c

    .line 1043
    if-eqz v2, :cond_10

    .line 1044
    iget v0, v2, Landroid/support/v4/view/bi;->b:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v13, v0, :cond_5

    iget-boolean v0, v2, Landroid/support/v4/view/bi;->c:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    move-object/from16 v17, v0

    iget-object v2, v2, Landroid/support/v4/view/bi;->a:Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ae;->a(Ljava/lang/Object;)V

    .line 1053
    add-int/lit8 v5, v5, -0x1

    .line 1054
    add-int/lit8 v12, v12, -0x1

    .line 1055
    if-ltz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    .line 1041
    :cond_5
    :goto_c
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    .line 1011
    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_4

    .line 1029
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 1031
    :cond_8
    const/high16 v6, 0x4000

    iget v7, v14, Landroid/support/v4/view/bi;->d:F

    sub-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    move/from16 v0, v16

    int-to-float v9, v0

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    goto/16 :goto_8

    :cond_9
    move v7, v8

    .line 1036
    goto :goto_9

    :cond_a
    move v9, v10

    .line 1038
    goto :goto_a

    .line 1055
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 1057
    :cond_c
    if-eqz v2, :cond_e

    iget v0, v2, Landroid/support/v4/view/bi;->b:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v13, v0, :cond_e

    .line 1058
    iget v2, v2, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v11, v2

    .line 1059
    add-int/lit8 v5, v5, -0x1

    .line 1060
    if-ltz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    goto :goto_c

    :cond_d
    const/4 v2, 0x0

    goto :goto_c

    .line 1061
    :cond_e
    if-lt v13, v7, :cond_5

    .line 1062
    add-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Landroid/support/v4/view/ViewPager;->b(II)Landroid/support/v4/view/bi;

    move-result-object v2

    .line 1063
    iget v2, v2, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v11, v2

    .line 1064
    add-int/lit8 v12, v12, 0x1

    .line 1065
    if-ltz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    goto :goto_c

    :cond_f
    const/4 v2, 0x0

    goto :goto_c

    .line 1069
    :cond_10
    iget v6, v14, Landroid/support/v4/view/bi;->d:F

    .line 1070
    add-int/lit8 v8, v12, 0x1

    .line 1071
    const/high16 v2, 0x4000

    cmpg-float v2, v6, v2

    if-gez v2, :cond_18

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    move-object v7, v2

    .line 1073
    :goto_d
    if-gtz v16, :cond_12

    const/4 v2, 0x0

    move v5, v2

    .line 1075
    :goto_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v18, v7

    move v7, v8

    move v8, v2

    move-object/from16 v2, v18

    :goto_f
    if-ge v8, v15, :cond_18

    .line 1076
    cmpl-float v11, v6, v5

    if-ltz v11, :cond_14

    if-le v8, v10, :cond_14

    .line 1077
    if-eqz v2, :cond_18

    .line 1078
    iget v11, v2, Landroid/support/v4/view/bi;->b:I

    if-ne v8, v11, :cond_20

    iget-boolean v11, v2, Landroid/support/v4/view/bi;->c:Z

    if-nez v11, :cond_20

    .line 1081
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1082
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v2, v2, Landroid/support/v4/view/bi;->a:Ljava/lang/Object;

    invoke-virtual {v11, v2}, Landroid/support/v4/view/ae;->a(Ljava/lang/Object;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    :goto_10
    move/from16 v18, v6

    move-object v6, v2

    move/from16 v2, v18

    .line 1075
    :goto_11
    add-int/lit8 v8, v8, 0x1

    move/from16 v18, v2

    move-object v2, v6

    move/from16 v6, v18

    goto :goto_f

    .line 1072
    :cond_11
    const/4 v7, 0x0

    goto :goto_d

    .line 1073
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v16

    int-to-float v5, v0

    div-float/2addr v2, v5

    const/high16 v5, 0x4000

    add-float/2addr v2, v5

    move v5, v2

    goto :goto_e

    .line 1087
    :cond_13
    const/4 v2, 0x0

    goto :goto_10

    .line 1089
    :cond_14
    if-eqz v2, :cond_16

    iget v11, v2, Landroid/support/v4/view/bi;->b:I

    if-ne v8, v11, :cond_16

    .line 1090
    iget v2, v2, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v6, v2

    .line 1091
    add-int/lit8 v7, v7, 0x1

    .line 1092
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    :goto_12
    move/from16 v18, v6

    move-object v6, v2

    move/from16 v2, v18

    goto :goto_11

    :cond_15
    const/4 v2, 0x0

    goto :goto_12

    .line 1093
    :cond_16
    if-gt v8, v9, :cond_20

    .line 1094
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Landroid/support/v4/view/ViewPager;->b(II)Landroid/support/v4/view/bi;

    move-result-object v2

    .line 1095
    add-int/lit8 v7, v7, 0x1

    .line 1096
    iget v2, v2, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v6, v2

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    :goto_13
    move/from16 v18, v6

    move-object v6, v2

    move/from16 v2, v18

    goto :goto_11

    :cond_17
    const/4 v2, 0x0

    goto :goto_13

    .line 1102
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12, v4}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/bi;ILandroid/support/v4/view/bi;)V

    .line 1112
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->k:I

    if-eqz v14, :cond_1b

    iget-object v2, v14, Landroid/support/v4/view/bi;->a:Ljava/lang/Object;

    :goto_14
    invoke-virtual {v4, v2}, Landroid/support/v4/view/ae;->b(Ljava/lang/Object;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v2}, Landroid/support/v4/view/ae;->b()V

    .line 1118
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    .line 1119
    const/4 v2, 0x0

    move v4, v2

    :goto_15
    if-ge v4, v5, :cond_1c

    .line 1120
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1121
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bj;

    .line 1122
    iput v4, v2, Landroid/support/v4/view/bj;->f:I

    .line 1123
    iget-boolean v7, v2, Landroid/support/v4/view/bj;->a:Z

    if-nez v7, :cond_1a

    iget v7, v2, Landroid/support/v4/view/bj;->c:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1a

    .line 1125
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v6

    .line 1126
    if-eqz v6, :cond_1a

    .line 1127
    iget v7, v6, Landroid/support/v4/view/bi;->d:F

    iput v7, v2, Landroid/support/v4/view/bj;->c:F

    .line 1128
    iget v6, v6, Landroid/support/v4/view/bi;->b:I

    iput v6, v2, Landroid/support/v4/view/bj;->e:I

    .line 1119
    :cond_1a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_15

    .line 1112
    :cond_1b
    const/4 v2, 0x0

    goto :goto_14

    .line 1132
    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->f()V

    .line 1134
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1135
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 1136
    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v2

    .line 1137
    :goto_16
    if-eqz v2, :cond_1d

    iget v2, v2, Landroid/support/v4/view/bi;->b:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->k:I

    if-eq v2, v4, :cond_0

    .line 1138
    :cond_1d
    const/4 v2, 0x0

    :goto_17
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1139
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1140
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v5

    .line 1141
    if-eqz v5, :cond_1e

    iget v5, v5, Landroid/support/v4/view/bi;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->k:I

    if-ne v5, v6, :cond_1e

    .line 1142
    invoke-virtual {v4, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1143
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1136
    :cond_1f
    const/4 v2, 0x0

    goto :goto_16

    :cond_20
    move/from16 v18, v6

    move-object v6, v2

    move/from16 v2, v18

    goto/16 :goto_11

    :cond_21
    move-object v14, v2

    goto/16 :goto_6

    :cond_22
    move-object v2, v6

    goto/16 :goto_5

    :cond_23
    move-object v4, v3

    move v3, v2

    goto/16 :goto_1
.end method

.method private a(IF)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1718
    iget v0, p0, Landroid/support/v4/view/ViewPager;->aa:I

    if-lez v0, :cond_1

    .line 1719
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    .line 1720
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1721
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1722
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v6

    .line 1723
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    move v4, v3

    .line 1724
    :goto_0
    if-ge v4, v7, :cond_1

    .line 1725
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1726
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    .line 1727
    iget-boolean v9, v0, Landroid/support/v4/view/bj;->a:Z

    if-eqz v9, :cond_6

    .line 1729
    iget v0, v0, Landroid/support/v4/view/bj;->b:I

    and-int/lit8 v0, v0, 0x7

    .line 1730
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1748
    :goto_1
    add-int/2addr v0, v5

    .line 1750
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1751
    if-eqz v0, :cond_0

    .line 1752
    invoke-virtual {v8, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1724
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_0

    .line 1737
    :pswitch_1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    .line 1738
    goto :goto_1

    .line 1740
    :pswitch_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1742
    goto :goto_1

    .line 1744
    :pswitch_3
    sub-int v0, v6, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1745
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_1

    .line 1757
    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager;->c:I

    .line 1758
    iput p2, p0, Landroid/support/v4/view/ViewPager;->d:F

    .line 1760
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    if-eqz v0, :cond_2

    .line 1761
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    .line 1763
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    if-eqz v0, :cond_3

    .line 1764
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    .line 1767
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Landroid/support/v4/view/bn;

    if-eqz v0, :cond_5

    .line 1768
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    .line 1769
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v3

    .line 1770
    :goto_3
    if-ge v1, v2, :cond_5

    .line 1771
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1772
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    .line 1774
    iget-boolean v0, v0, Landroid/support/v4/view/bj;->a:Z

    if-nez v0, :cond_4

    .line 1776
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    .line 1777
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Landroid/support/v4/view/bn;

    .line 1770
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1781
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Z:Z

    .line 1782
    return-void

    :cond_6
    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_2

    .line 1730
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x3f80

    .line 827
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 829
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 865
    :goto_0
    return-void

    .line 832
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 833
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    .line 834
    sub-int v3, p1, v1

    .line 835
    rsub-int/lit8 v4, v2, 0x0

    .line 836
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 837
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 838
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 839
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_0

    .line 843
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 844
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 846
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    .line 847
    div-int/lit8 v5, v0, 0x2

    .line 848
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 849
    int-to-float v7, v5

    int-to-float v5, v5

    invoke-static {v6}, Landroid/support/v4/view/ViewPager;->a(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 852
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 854
    if-lez v6, :cond_2

    .line 855
    const/high16 v0, 0x447a

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 861
    :goto_1
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 863
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 864
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    goto :goto_0

    .line 857
    :cond_2
    int-to-float v0, v0

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget v5, p0, Landroid/support/v4/view/ViewPager;->k:I

    mul-float/2addr v0, v8

    .line 858
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    .line 859
    add-float/2addr v0, v8

    const/high16 v5, 0x42c8

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_1
.end method

.method private a(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1514
    if-lez p2, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1515
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1516
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v1, p4

    .line 1518
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1519
    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    .line 1520
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 1522
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1523
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1525
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 1526
    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/bi;

    move-result-object v3

    .line 1527
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    iget v3, v3, Landroid/support/v4/view/bi;->e:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1540
    :cond_0
    :goto_0
    return-void

    .line 1531
    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/bi;

    move-result-object v0

    .line 1532
    if-eqz v0, :cond_2

    iget v0, v0, Landroid/support/v4/view/bi;->e:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->v:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1533
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1535
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1536
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 1537
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1532
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(IZIZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 580
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/bi;

    move-result-object v0

    .line 582
    if-eqz v0, :cond_5

    .line 583
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 584
    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->u:F

    iget v0, v0, Landroid/support/v4/view/bi;->e:F

    iget v4, p0, Landroid/support/v4/view/ViewPager;->v:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 587
    :goto_0
    if-eqz p2, :cond_2

    .line 588
    invoke-direct {p0, v0, p3}, Landroid/support/v4/view/ViewPager;->a(II)V

    .line 589
    if-eqz p4, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bm;->a(I)V

    .line 592
    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bm;->a(I)V

    .line 605
    :cond_1
    :goto_1
    return-void

    .line 596
    :cond_2
    if-eqz p4, :cond_3

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    if-eqz v2, :cond_3

    .line 597
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    invoke-interface {v2, p1}, Landroid/support/v4/view/bm;->a(I)V

    .line 599
    :cond_3
    if-eqz p4, :cond_4

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    if-eqz v2, :cond_4

    .line 600
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    invoke-interface {v2, p1}, Landroid/support/v4/view/bm;->a(I)V

    .line 602
    :cond_4
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 603
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private a(IZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 524
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 525
    return-void
.end method

.method private a(IZZI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->c()I

    move-result v0

    if-gtz v0, :cond_1

    .line 529
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 568
    :goto_0
    return-void

    .line 532
    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 537
    :cond_2
    if-gez p1, :cond_5

    move p1, v1

    .line 542
    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    .line 543
    iget v2, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Landroid/support/v4/view/ViewPager;->k:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_6

    :cond_4
    move v2, v1

    .line 547
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 548
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    iput-boolean v3, v0, Landroid/support/v4/view/bi;->c:Z

    .line 547
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 539
    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->c()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 540
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->c()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 551
    :cond_6
    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-eq v0, p1, :cond_7

    move v1, v3

    .line 553
    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->V:Z

    if-eqz v0, :cond_a

    .line 556
    iput p1, p0, Landroid/support/v4/view/ViewPager;->k:I

    .line 557
    if-eqz v1, :cond_8

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    if-eqz v0, :cond_8

    .line 558
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bm;->a(I)V

    .line 560
    :cond_8
    if-eqz v1, :cond_9

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    if-eqz v0, :cond_9

    .line 561
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bm;->a(I)V

    .line 563
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_0

    .line 565
    :cond_a
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 566
    invoke-direct {p0, p1, p2, p4, v1}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    return-void
.end method

.method private a(Landroid/support/v4/view/bi;ILandroid/support/v4/view/bi;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v10, 0x3f80

    .line 1168
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->c()I

    move-result v7

    .line 1169
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    .line 1170
    if-lez v0, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v6, v0

    .line 1172
    :goto_0
    if-eqz p3, :cond_4

    .line 1173
    iget v0, p3, Landroid/support/v4/view/bi;->b:I

    .line 1175
    iget v1, p1, Landroid/support/v4/view/bi;->b:I

    if-ge v0, v1, :cond_2

    .line 1177
    iget v1, p3, Landroid/support/v4/view/bi;->e:F

    iget v2, p3, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v1, v2

    add-float/2addr v1, v6

    .line 1179
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v3, v4

    move v1, v0

    .line 1180
    :goto_1
    iget v0, p1, Landroid/support/v4/view/bi;->b:I

    if-gt v1, v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 1181
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    .line 1182
    :goto_2
    iget v5, v0, Landroid/support/v4/view/bi;->b:I

    if-le v1, v5, :cond_e

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_e

    .line 1183
    add-int/lit8 v3, v3, 0x1

    .line 1184
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    goto :goto_2

    .line 1170
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 1186
    :goto_3
    iget v5, v0, Landroid/support/v4/view/bi;->b:I

    if-ge v2, v5, :cond_1

    .line 1189
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    add-float v5, v10, v6

    add-float/2addr v5, v1

    .line 1190
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v5

    goto :goto_3

    .line 1192
    :cond_1
    iput v1, v0, Landroid/support/v4/view/bi;->e:F

    .line 1193
    iget v0, v0, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v0, v6

    add-float/2addr v1, v0

    .line 1180
    add-int/lit8 v0, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 1195
    :cond_2
    iget v1, p1, Landroid/support/v4/view/bi;->b:I

    if-le v0, v1, :cond_4

    .line 1196
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 1197
    iget v1, p3, Landroid/support/v4/view/bi;->e:F

    .line 1199
    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    .line 1200
    :goto_4
    iget v0, p1, Landroid/support/v4/view/bi;->b:I

    if-lt v1, v0, :cond_4

    if-ltz v3, :cond_4

    .line 1201
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    .line 1202
    :goto_5
    iget v5, v0, Landroid/support/v4/view/bi;->b:I

    if-ge v1, v5, :cond_d

    if-lez v3, :cond_d

    .line 1203
    add-int/lit8 v3, v3, -0x1

    .line 1204
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    goto :goto_5

    .line 1206
    :goto_6
    iget v5, v0, Landroid/support/v4/view/bi;->b:I

    if-le v2, v5, :cond_3

    .line 1209
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    add-float v5, v10, v6

    sub-float v5, v1, v5

    .line 1210
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v5

    goto :goto_6

    .line 1212
    :cond_3
    iget v5, v0, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v5, v6

    sub-float/2addr v1, v5

    .line 1213
    iput v1, v0, Landroid/support/v4/view/bi;->e:F

    .line 1200
    add-int/lit8 v0, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_4

    .line 1219
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1220
    iget v1, p1, Landroid/support/v4/view/bi;->e:F

    .line 1221
    iget v0, p1, Landroid/support/v4/view/bi;->b:I

    add-int/lit8 v2, v0, -0x1

    .line 1222
    iget v0, p1, Landroid/support/v4/view/bi;->b:I

    if-nez v0, :cond_5

    iget v0, p1, Landroid/support/v4/view/bi;->e:F

    :goto_7
    iput v0, p0, Landroid/support/v4/view/ViewPager;->u:F

    .line 1223
    iget v0, p1, Landroid/support/v4/view/bi;->b:I

    add-int/lit8 v3, v7, -0x1

    if-ne v0, v3, :cond_6

    iget v0, p1, Landroid/support/v4/view/bi;->e:F

    iget v3, p1, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v10

    :goto_8
    iput v0, p0, Landroid/support/v4/view/ViewPager;->v:F

    .line 1226
    add-int/lit8 v0, p2, -0x1

    move v3, v0

    :goto_9
    if-ltz v3, :cond_9

    .line 1227
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    .line 1228
    :goto_a
    iget v8, v0, Landroid/support/v4/view/bi;->b:I

    if-le v2, v8, :cond_7

    .line 1229
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    add-int/lit8 v2, v2, -0x1

    add-float v8, v10, v6

    sub-float/2addr v1, v8

    goto :goto_a

    .line 1222
    :cond_5
    const v0, -0x800001

    goto :goto_7

    .line 1223
    :cond_6
    const v0, 0x7f7fffff

    goto :goto_8

    .line 1231
    :cond_7
    iget v8, v0, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v8, v6

    sub-float/2addr v1, v8

    .line 1232
    iput v1, v0, Landroid/support/v4/view/bi;->e:F

    .line 1233
    iget v0, v0, Landroid/support/v4/view/bi;->b:I

    if-nez v0, :cond_8

    iput v1, p0, Landroid/support/v4/view/ViewPager;->u:F

    .line 1226
    :cond_8
    add-int/lit8 v0, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    move v3, v0

    goto :goto_9

    .line 1235
    :cond_9
    iget v0, p1, Landroid/support/v4/view/bi;->e:F

    iget v1, p1, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v0, v1

    add-float v1, v0, v6

    .line 1236
    iget v0, p1, Landroid/support/v4/view/bi;->b:I

    add-int/lit8 v2, v0, 0x1

    .line 1238
    add-int/lit8 v0, p2, 0x1

    move v3, v0

    :goto_b
    if-ge v3, v5, :cond_c

    .line 1239
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    .line 1240
    :goto_c
    iget v8, v0, Landroid/support/v4/view/bi;->b:I

    if-ge v2, v8, :cond_a

    .line 1241
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    add-int/lit8 v2, v2, 0x1

    add-float v8, v10, v6

    add-float/2addr v1, v8

    goto :goto_c

    .line 1243
    :cond_a
    iget v8, v0, Landroid/support/v4/view/bi;->b:I

    add-int/lit8 v9, v7, -0x1

    if-ne v8, v9, :cond_b

    .line 1244
    iget v8, v0, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v8, v1

    sub-float/2addr v8, v10

    iput v8, p0, Landroid/support/v4/view/ViewPager;->v:F

    .line 1246
    :cond_b
    iput v1, v0, Landroid/support/v4/view/bi;->e:F

    .line 1247
    iget v0, v0, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v0, v6

    add-float/2addr v1, v0

    .line 1238
    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_b

    .line 1250
    :cond_c
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->W:Z

    .line 1251
    return-void

    :cond_d
    move v11, v1

    move v1, v2

    move v2, v11

    goto/16 :goto_6

    :cond_e
    move v11, v1

    move v1, v2

    move v2, v11

    goto/16 :goto_3
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 2423
    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2424
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2425
    iget v2, p0, Landroid/support/v4/view/ViewPager;->M:I

    if-ne v1, v2, :cond_0

    .line 2428
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2429
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->I:F

    .line 2430
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    .line 2431
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2432
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2435
    :cond_0
    return-void

    .line 2428
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1785
    iget v0, p0, Landroid/support/v4/view/ViewPager;->al:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v0, v4

    .line 1786
    :goto_0
    if-eqz v0, :cond_1

    .line 1788
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1789
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1790
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 1791
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    .line 1792
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1793
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1794
    if-ne v1, v5, :cond_0

    if-eq v3, v6, :cond_1

    .line 1795
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1798
    :cond_1
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z

    move v1, v2

    move v3, v0

    .line 1799
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1800
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    .line 1801
    iget-boolean v5, v0, Landroid/support/v4/view/bi;->c:Z

    if-eqz v5, :cond_2

    .line 1803
    iput-boolean v2, v0, Landroid/support/v4/view/bi;->c:Z

    move v3, v4

    .line 1799
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1785
    goto :goto_0

    .line 1806
    :cond_4
    if-eqz v3, :cond_5

    .line 1807
    if-eqz p1, :cond_6

    .line 1808
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ak:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1813
    :cond_5
    :goto_2
    return-void

    .line 1810
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ak:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private a(FF)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1816
    iget v0, p0, Landroid/support/v4/view/ViewPager;->G:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->G:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 2511
    const/4 v0, 0x0

    .line 2512
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2513
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2533
    :cond_0
    :goto_0
    return v0

    .line 2515
    :sswitch_0
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)Z

    move-result v0

    goto :goto_0

    .line 2518
    :sswitch_1
    const/16 v0, 0x42

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)Z

    move-result v0

    goto :goto_0

    .line 2521
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2524
    invoke-static {p1}, Landroid/support/v4/view/s;->b(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2525
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)Z

    move-result v0

    goto :goto_0

    .line 2526
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/s;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2527
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)Z

    move-result v0

    goto :goto_0

    .line 2513
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Landroid/view/View;ZIII)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2474
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 2475
    check-cast v6, Landroid/view/ViewGroup;

    .line 2476
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 2477
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 2478
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2480
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    .line 2483
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2484
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2493
    :cond_0
    :goto_1
    return v2

    .line 2480
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 2493
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ae;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    return-object v0
.end method

.method private b(I)Landroid/support/v4/view/bi;
    .locals 3
    .parameter

    .prologue
    .line 1393
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1394
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    .line 1395
    iget v2, v0, Landroid/support/v4/view/bi;->b:I

    if-ne v2, p1, :cond_0

    .line 1399
    :goto_1
    return-object v0

    .line 1393
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1399
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(II)Landroid/support/v4/view/bi;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 868
    new-instance v0, Landroid/support/v4/view/bi;

    invoke-direct {v0}, Landroid/support/v4/view/bi;-><init>()V

    .line 869
    iput p1, v0, Landroid/support/v4/view/bi;->b:I

    .line 870
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/ae;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/bi;->a:Ljava/lang/Object;

    .line 871
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/support/v4/view/bi;->d:F

    .line 872
    if-ltz p2, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 873
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    :goto_0
    return-object v0

    .line 875
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private b(Landroid/view/View;)Landroid/support/v4/view/bi;
    .locals 2
    .parameter

    .prologue
    .line 1383
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 1384
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1385
    :cond_0
    const/4 v0, 0x0

    .line 1389
    :goto_1
    return-object v0

    .line 1387
    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 1389
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1820
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    move v2, v1

    .line 1821
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1822
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 1824
    :goto_1
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/support/v4/view/ak;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1821
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1822
    goto :goto_1

    .line 1826
    :cond_1
    return-void
.end method

.method private b(F)Z
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2096
    .line 2098
    iget v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    sub-float/2addr v0, p1

    .line 2099
    iput p1, p0, Landroid/support/v4/view/ViewPager;->I:F

    .line 2101
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 2102
    add-float v5, v1, v0

    .line 2103
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v7

    .line 2105
    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->u:F

    mul-float v4, v0, v1

    .line 2106
    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->v:F

    mul-float v6, v0, v1

    .line 2110
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    .line 2111
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bi;

    .line 2112
    iget v8, v0, Landroid/support/v4/view/bi;->b:I

    if-eqz v8, :cond_5

    .line 2114
    iget v0, v0, Landroid/support/v4/view/bi;->e:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v2

    .line 2116
    :goto_0
    iget v8, v1, Landroid/support/v4/view/bi;->b:I

    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v9}, Landroid/support/v4/view/ae;->c()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_4

    .line 2118
    iget v1, v1, Landroid/support/v4/view/bi;->e:F

    int-to-float v3, v7

    mul-float/2addr v1, v3

    move v3, v2

    .line 2121
    :goto_1
    cmpg-float v6, v5, v4

    if-gez v6, :cond_1

    .line 2122
    if-eqz v0, :cond_0

    .line 2123
    sub-float v0, v4, v5

    .line 2124
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/e;->a(F)Z

    move-result v2

    .line 2135
    :cond_0
    :goto_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    .line 2136
    float-to-int v0, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2137
    float-to-int v0, v4

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)Z

    .line 2139
    return v2

    .line 2127
    :cond_1
    cmpl-float v0, v5, v1

    if-lez v0, :cond_3

    .line 2128
    if-eqz v3, :cond_2

    .line 2129
    sub-float v0, v5, v1

    .line 2130
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/e;->a(F)Z

    move-result v2

    :cond_2
    move v4, v1

    .line 2132
    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v4/view/ViewPager;)I
    .locals 1
    .parameter

    .prologue
    .line 84
    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    return v0
.end method

.method private c(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1677
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1678
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Z:Z

    .line 1679
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IF)V

    .line 1680
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->Z:Z

    if-nez v1, :cond_2

    .line 1681
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1686
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()Landroid/support/v4/view/bi;

    move-result-object v1

    .line 1687
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 1688
    iget v3, p0, Landroid/support/v4/view/ViewPager;->q:I

    .line 1689
    iget v3, p0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 1690
    iget v4, v1, Landroid/support/v4/view/bi;->b:I

    .line 1691
    int-to-float v5, p1

    int-to-float v2, v2

    div-float v2, v5, v2

    iget v5, v1, Landroid/support/v4/view/bi;->e:F

    sub-float/2addr v2, v5

    iget v1, v1, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v1, v3

    div-float v1, v2, v1

    .line 1695
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Z:Z

    .line 1696
    invoke-direct {p0, v4, v1}, Landroid/support/v4/view/ViewPager;->a(IF)V

    .line 1697
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Z:Z

    if-nez v0, :cond_1

    .line 1698
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1701
    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic c()[I
    .locals 1

    .prologue
    .line 84
    sget-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 362
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 363
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 364
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 365
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroid/support/v4/view/ViewPager;->f:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    .line 366
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 367
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 369
    invoke-static {v1}, Landroid/support/v4/view/az;->a(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->H:I

    .line 370
    const/high16 v3, 0x43c8

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->O:I

    .line 371
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->P:I

    .line 372
    new-instance v1, Landroid/support/v4/widget/e;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    .line 373
    new-instance v1, Landroid/support/v4/widget/e;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    .line 375
    const/high16 v0, 0x41c8

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Q:I

    .line 376
    const/high16 v0, 0x4000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->R:I

    .line 377
    const/high16 v0, 0x4180

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:I

    .line 379
    new-instance v0, Landroid/support/v4/view/bk;

    invoke-direct {v0, p0}, Landroid/support/v4/view/bk;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 381
    invoke-static {p0}, Landroid/support/v4/view/ak;->c(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-static {p0}, Landroid/support/v4/view/ak;->d(Landroid/view/View;)V

    .line 386
    :cond_0
    return-void
.end method

.method private d(I)Z
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x42

    const/16 v7, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2537
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2538
    if-ne v2, p0, :cond_1

    move-object v0, v1

    .line 2565
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2567
    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_7

    .line 2568
    if-ne p1, v7, :cond_5

    .line 2571
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2572
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2573
    if-eqz v0, :cond_4

    if-lt v2, v3, :cond_4

    .line 2574
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->i()Z

    move-result v0

    .line 2596
    :goto_1
    if-eqz v0, :cond_0

    .line 2597
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 2599
    :cond_0
    return v0

    .line 2540
    :cond_1
    if-eqz v2, :cond_c

    .line 2542
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    .line 2544
    if-ne v0, p0, :cond_2

    move v0, v4

    .line 2549
    :goto_3
    if-nez v0, :cond_c

    .line 2551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2552
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2553
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 2555
    const-string v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2554
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 2543
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    .line 2557
    :cond_3
    const-string v0, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2559
    goto/16 :goto_0

    .line 2576
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_1

    .line 2578
    :cond_5
    if-ne p1, v8, :cond_b

    .line 2581
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2582
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2583
    if-eqz v0, :cond_6

    if-le v2, v3, :cond_a

    .line 2584
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    .line 2589
    :cond_7
    if-eq p1, v7, :cond_8

    if-ne p1, v4, :cond_9

    .line 2591
    :cond_8
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->i()Z

    move-result v0

    goto/16 :goto_1

    .line 2592
    :cond_9
    if-eq p1, v8, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 2594
    :cond_a
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()Z

    move-result v0

    goto/16 :goto_1

    :cond_b
    move v0, v3

    goto/16 :goto_1

    :cond_c
    move-object v0, v2

    goto/16 :goto_0

    :cond_d
    move v0, v3

    goto/16 :goto_3
.end method

.method private e()V
    .locals 2

    .prologue
    .line 469
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 470
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    .line 472
    iget-boolean v0, v0, Landroid/support/v4/view/bj;->a:Z

    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 474
    add-int/lit8 v1, v1, -0x1

    .line 469
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 477
    :cond_1
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 1152
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ah:I

    if-eqz v0, :cond_2

    .line 1153
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ai:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ai:Ljava/util/ArrayList;

    .line 1158
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1159
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1160
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1161
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->ai:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1156
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ai:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1163
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ai:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->aj:Landroid/support/v4/view/bq;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1165
    :cond_2
    return-void
.end method

.method private g()Landroid/support/v4/view/bi;
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2147
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    .line 2148
    if-lez v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    .line 2149
    :goto_0
    if-lez v1, :cond_4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    .line 2150
    :goto_1
    const/4 v5, -0x1

    .line 2153
    const/4 v4, 0x1

    .line 2155
    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    .line 2156
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2157
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    .line 2159
    if-nez v5, :cond_6

    iget v10, v0, Landroid/support/v4/view/bi;->b:I

    add-int/lit8 v11, v8, 0x1

    if-eq v10, v11, :cond_6

    .line 2161
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/bi;

    .line 2162
    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Landroid/support/v4/view/bi;->e:F

    .line 2163
    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Landroid/support/v4/view/bi;->b:I

    .line 2164
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget v6, v0, Landroid/support/v4/view/bi;->b:I

    const/high16 v6, 0x3f80

    iput v6, v0, Landroid/support/v4/view/bi;->d:F

    .line 2165
    add-int/lit8 v2, v2, -0x1

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    .line 2167
    :goto_3
    iget v6, v2, Landroid/support/v4/view/bi;->e:F

    .line 2170
    iget v7, v2, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    .line 2171
    if-nez v5, :cond_0

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_2

    .line 2172
    :cond_0
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_1

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_5

    :cond_1
    move-object v4, v2

    .line 2185
    :cond_2
    return-object v4

    :cond_3
    move v9, v2

    .line 2148
    goto :goto_0

    :cond_4
    move v1, v2

    .line 2149
    goto :goto_1

    .line 2179
    :cond_5
    iget v5, v2, Landroid/support/v4/view/bi;->b:I

    .line 2180
    iget v4, v2, Landroid/support/v4/view/bi;->d:F

    .line 2156
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_3
.end method

.method private getClientWidth()I
    .locals 2

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private h()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2438
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->D:Z

    .line 2439
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->E:Z

    .line 2441
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2442
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2443
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    .line 2445
    :cond_0
    return-void
.end method

.method private i()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2629
    iget v1, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-lez v1, :cond_0

    .line 2630
    iget v1, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 2633
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2637
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->k:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v2}, Landroid/support/v4/view/ae;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2638
    iget v1, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 2641
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 403
    iget v0, p0, Landroid/support/v4/view/ViewPager;->al:I

    if-ne v0, p1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager;->al:I

    .line 408
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Landroid/support/v4/view/bn;

    if-eqz v0, :cond_2

    .line 410
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(Z)V

    .line 412
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bm;->b(I)V

    goto :goto_0

    .line 410
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2448
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    if-eq v0, p1, :cond_0

    .line 2449
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->z:Z

    .line 2460
    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 883
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->c()I

    move-result v0

    .line 884
    iput v0, p0, Landroid/support/v4/view/ViewPager;->b:I

    .line 885
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v4, p0, Landroid/support/v4/view/ViewPager;->B:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v2

    .line 887
    :goto_0
    iget v5, p0, Landroid/support/v4/view/ViewPager;->k:I

    move v4, v3

    .line 889
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 891
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    .line 892
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v0, v0, Landroid/support/v4/view/bi;->a:Ljava/lang/Object;

    .line 894
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_0
    move v1, v3

    .line 885
    goto :goto_0

    .line 929
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    sget-object v4, Landroid/support/v4/view/ViewPager;->e:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 935
    if-eqz v1, :cond_4

    .line 937
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v1, v3

    .line 938
    :goto_2
    if-ge v1, v4, :cond_3

    .line 939
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 940
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    .line 941
    iget-boolean v6, v0, Landroid/support/v4/view/bj;->a:Z

    if-nez v6, :cond_2

    .line 942
    const/4 v6, 0x0

    iput v6, v0, Landroid/support/v4/view/bj;->c:F

    .line 938
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 946
    :cond_3
    invoke-direct {p0, v5, v3, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 947
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 949
    :cond_4
    return-void
.end method

.method public final a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 515
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->A:Z

    .line 516
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 517
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2649
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2651
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    .line 2653
    const/high16 v0, 0x6

    if-eq v2, v0, :cond_1

    .line 2654
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2655
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2656
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2657
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v4

    .line 2658
    if-eqz v4, :cond_0

    iget v4, v4, Landroid/support/v4/view/bi;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-ne v4, v5, :cond_0

    .line 2659
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2654
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2669
    :cond_1
    const/high16 v0, 0x4

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 2675
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2686
    :cond_3
    :goto_1
    return-void

    .line 2678
    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2682
    :cond_5
    if-eqz p1, :cond_3

    .line 2683
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2696
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2697
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2698
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2699
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v2

    .line 2700
    if-eqz v2, :cond_0

    iget v2, v2, Landroid/support/v4/view/bi;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-ne v2, v3, :cond_0

    .line 2701
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2696
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2705
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1338
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1339
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1341
    check-cast v0, Landroid/support/v4/view/bj;

    .line 1342
    iget-boolean v1, v0, Landroid/support/v4/view/bj;->a:Z

    instance-of v2, p1, Landroid/support/v4/view/bh;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v4/view/bj;->a:Z

    .line 1343
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->y:Z

    if-eqz v1, :cond_2

    .line 1344
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/support/v4/view/bj;->a:Z

    if-eqz v1, :cond_1

    .line 1345
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1347
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/view/bj;->d:Z

    .line 1348
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1360
    :goto_0
    return-void

    .line 1350
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 952
    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 953
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 2775
    instance-of v0, p1, Landroid/support/v4/view/bj;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 1653
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1654
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1655
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1656
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1657
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1659
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1660
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1661
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1662
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1663
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1668
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 1674
    :goto_0
    return-void

    .line 1673
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2499
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 2743
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_1

    .line 2744
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2760
    :cond_0
    :goto_0
    return v0

    .line 2748
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 2749
    :goto_1
    if-ge v1, v2, :cond_0

    .line 2750
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2751
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2752
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v4

    .line 2753
    if-eqz v4, :cond_2

    iget v4, v4, Landroid/support/v4/view/bi;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2755
    const/4 v0, 0x1

    goto :goto_0

    .line 2749
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x1

    .line 2210
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2211
    const/4 v0, 0x0

    .line 2213
    invoke-static {p0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;)I

    move-result v1

    .line 2214
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v1}, Landroid/support/v4/view/ae;->c()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 2217
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    invoke-virtual {v1}, Landroid/support/v4/widget/e;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2219
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 2220
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2222
    const/high16 v3, 0x4387

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2223
    neg-int v3, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->u:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2224
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/widget/e;->a(II)V

    .line 2225
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/e;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 2226
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2228
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    invoke-virtual {v1}, Landroid/support/v4/widget/e;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2229
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2230
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2231
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2233
    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2234
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->v:F

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2235
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/e;->a(II)V

    .line 2236
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/e;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2237
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2244
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 2246
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 2248
    :cond_3
    return-void

    .line 2240
    :cond_4
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    invoke-virtual {v1}, Landroid/support/v4/widget/e;->b()V

    .line 2241
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    invoke-virtual {v1}, Landroid/support/v4/widget/e;->b()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 792
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 793
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->r:Landroid/graphics/drawable/Drawable;

    .line 794
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 797
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2765
    new-instance v0, Landroid/support/v4/view/bj;

    invoke-direct {v0}, Landroid/support/v4/view/bj;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2780
    new-instance v0, Landroid/support/v4/view/bj;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/bj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 2770
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/ae;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 664
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ah:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    .line 665
    .end local p2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ai:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    iget v0, v0, Landroid/support/v4/view/bj;->f:I

    .line 666
    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    return v0
.end method

.method public getOnlyCreatePagesImmediatelyOffscreen()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->C:Z

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 761
    iget v0, p0, Landroid/support/v4/view/ViewPager;->q:I

    return v0
.end method

.method public getScrollOffset()F
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Landroid/support/v4/view/ViewPager;->d:F

    return v0
.end method

.method public getScrollPosition()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Landroid/support/v4/view/ViewPager;->c:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1404
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1405
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->V:Z

    .line 1406
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ak:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 399
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 400
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 2252
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2255
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->q:I

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v1, :cond_3

    .line 2256
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    .line 2257
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    .line 2259
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    .line 2260
    const/4 v5, 0x0

    .line 2261
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bi;

    .line 2262
    iget v4, v1, Landroid/support/v4/view/bi;->e:F

    .line 2263
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2264
    iget v3, v1, Landroid/support/v4/view/bi;->b:I

    .line 2265
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    iget v10, v2, Landroid/support/v4/view/bi;->b:I

    move v2, v5

    move v5, v3

    .line 2266
    :goto_0
    if-ge v5, v10, :cond_3

    .line 2267
    :goto_1
    iget v3, v1, Landroid/support/v4/view/bi;->b:I

    if-le v5, v3, :cond_0

    if-ge v2, v9, :cond_0

    .line 2268
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bi;

    goto :goto_1

    .line 2272
    :cond_0
    iget v3, v1, Landroid/support/v4/view/bi;->b:I

    if-ne v5, v3, :cond_2

    .line 2273
    iget v3, v1, Landroid/support/v4/view/bi;->e:F

    iget v4, v1, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    .line 2274
    iget v4, v1, Landroid/support/v4/view/bi;->e:F

    iget v11, v1, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    .line 2281
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    .line 2282
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->r:Landroid/graphics/drawable/Drawable;

    float-to-int v12, v3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->s:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->t:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2284
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->r:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2287
    :cond_1
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-gtz v3, :cond_3

    .line 2288
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 2276
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    .line 2277
    const/high16 v3, 0x3f80

    add-float/2addr v3, v4

    int-to-float v11, v7

    mul-float/2addr v3, v11

    .line 2278
    const/high16 v11, 0x3f80

    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_2

    .line 2292
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1836
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1839
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    .line 1842
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->D:Z

    .line 1843
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->E:Z

    .line 1844
    iput v3, p0, Landroid/support/v4/view/ViewPager;->M:I

    .line 1845
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1846
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1847
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    .line 1969
    :cond_1
    :goto_0
    return v2

    .line 1854
    :cond_2
    if-eqz v0, :cond_4

    .line 1855
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->D:Z

    if-eqz v1, :cond_3

    move v2, v6

    .line 1857
    goto :goto_0

    .line 1859
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->E:Z

    if-nez v1, :cond_1

    .line 1865
    :cond_4
    sparse-switch v0, :sswitch_data_0

    .line 1960
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1961
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    .line 1963
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1969
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->D:Z

    goto :goto_0

    .line 1876
    :sswitch_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    .line 1877
    if-eq v0, v3, :cond_5

    .line 1879
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1883
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1884
    iget v1, p0, Landroid/support/v4/view/ViewPager;->I:F

    sub-float v8, v7, v1

    .line 1885
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1886
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1887
    iget v0, p0, Landroid/support/v4/view/ViewPager;->L:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1890
    cmpl-float v0, v8, v12

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    invoke-direct {p0, v0, v8}, Landroid/support/v4/view/ViewPager;->a(FF)Z

    move-result v0

    if-nez v0, :cond_7

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1893
    iput v7, p0, Landroid/support/v4/view/ViewPager;->I:F

    .line 1894
    iput v10, p0, Landroid/support/v4/view/ViewPager;->J:F

    .line 1895
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->E:Z

    goto :goto_0

    .line 1898
    :cond_7
    iget v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_a

    const/high16 v0, 0x3f00

    mul-float/2addr v0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_a

    .line 1900
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->D:Z

    .line 1901
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1902
    cmpl-float v0, v8, v12

    if-lez v0, :cond_9

    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->H:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    .line 1904
    iput v10, p0, Landroid/support/v4/view/ViewPager;->J:F

    .line 1905
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1914
    :cond_8
    :goto_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->D:Z

    if-eqz v0, :cond_5

    .line 1916
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1917
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1902
    :cond_9
    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->H:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1906
    :cond_a
    iget v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    .line 1912
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->E:Z

    goto :goto_3

    .line 1928
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    .line 1929
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->L:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->J:F

    .line 1930
    invoke-static {p1, v2}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    .line 1931
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->E:Z

    .line 1933
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1934
    iget v0, p0, Landroid/support/v4/view/ViewPager;->al:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->R:I

    if-le v0, v1, :cond_b

    .line 1937
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1938
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z

    .line 1939
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 1940
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ab:Z

    if-eqz v0, :cond_5

    .line 1941
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->D:Z

    .line 1942
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1945
    :cond_b
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 1946
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->D:Z

    goto/16 :goto_1

    .line 1956
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1865
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .parameter
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1544
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1545
    sub-int v10, p4, p2

    .line 1546
    sub-int v11, p5, p3

    .line 1547
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    .line 1548
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    .line 1549
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v5

    .line 1550
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    .line 1551
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1553
    const/4 v4, 0x0

    .line 1557
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_0

    .line 1558
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1559
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_5

    .line 1560
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bj;

    .line 1561
    iget-boolean v7, v1, Landroid/support/v4/view/bj;->a:Z

    if-eqz v7, :cond_5

    .line 1564
    iget v7, v1, Landroid/support/v4/view/bj;->b:I

    and-int/lit8 v7, v7, 0x7

    .line 1565
    iget v1, v1, Landroid/support/v4/view/bj;->b:I

    and-int/lit8 v14, v1, 0x70

    .line 1566
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v7, v6

    .line 1583
    :goto_1
    sparse-switch v14, :sswitch_data_0

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1600
    :goto_2
    add-int/2addr v7, v12

    .line 1601
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1604
    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    .line 1557
    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_0

    .line 1572
    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    .line 1573
    goto :goto_1

    .line 1575
    :pswitch_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    .line 1577
    goto :goto_1

    .line 1579
    :pswitch_3
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1580
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_1

    .line 1589
    :sswitch_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    .line 1590
    goto :goto_2

    .line 1592
    :sswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1594
    goto :goto_2

    .line 1596
    :sswitch_2
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 1597
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    .line 1609
    :cond_0
    sub-int v1, v10, v6

    sub-int v7, v1, v5

    .line 1611
    const/4 v1, 0x0

    move v5, v1

    :goto_4
    if-ge v5, v9, :cond_3

    .line 1612
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1613
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v10, 0x8

    if-eq v1, v10, :cond_2

    .line 1614
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bj;

    .line 1616
    iget-boolean v10, v1, Landroid/support/v4/view/bj;->a:Z

    if-nez v10, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1617
    int-to-float v12, v7

    iget v10, v10, Landroid/support/v4/view/bi;->e:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    .line 1618
    add-int/2addr v10, v6

    .line 1620
    iget-boolean v12, v1, Landroid/support/v4/view/bj;->d:Z

    if-eqz v12, :cond_1

    .line 1623
    const/4 v12, 0x0

    iput-boolean v12, v1, Landroid/support/v4/view/bj;->d:Z

    .line 1624
    int-to-float v12, v7

    iget v1, v1, Landroid/support/v4/view/bj;->c:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    const/high16 v12, 0x4000

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1627
    sub-int v12, v11, v2

    sub-int/2addr v12, v3

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1630
    invoke-virtual {v8, v1, v12}, Landroid/view/View;->measure(II)V

    .line 1635
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {v8, v10, v2, v1, v12}, Landroid/view/View;->layout(IIII)V

    .line 1611
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_4

    .line 1641
    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/ViewPager;->s:I

    .line 1642
    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->t:I

    .line 1643
    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->aa:I

    .line 1645
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->V:Z

    if-eqz v1, :cond_4

    .line 1646
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->k:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    .line 1648
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->V:Z

    .line 1649
    return-void

    :cond_5
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_3

    .line 1566
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1583
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1415
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 1418
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    .line 1419
    div-int/lit8 v1, v0, 0xa

    .line 1420
    iget v2, p0, Landroid/support/v4/view/ViewPager;->F:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->G:I

    .line 1423
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 1424
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 1431
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1432
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_8

    .line 1433
    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1434
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 1435
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    .line 1436
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Landroid/support/v4/view/bj;->a:Z

    if-eqz v1, :cond_3

    .line 1437
    iget v1, v0, Landroid/support/v4/view/bj;->b:I

    and-int/lit8 v6, v1, 0x7

    .line 1438
    iget v1, v0, Landroid/support/v4/view/bj;->b:I

    and-int/lit8 v4, v1, 0x70

    .line 1439
    const/high16 v2, -0x8000

    .line 1440
    const/high16 v1, -0x8000

    .line 1441
    const/16 v7, 0x30

    if-eq v4, v7, :cond_0

    const/16 v7, 0x50

    if-ne v4, v7, :cond_4

    :cond_0
    const/4 v4, 0x1

    move v7, v4

    .line 1442
    :goto_1
    const/4 v4, 0x3

    if-eq v6, v4, :cond_1

    const/4 v4, 0x5

    if-ne v6, v4, :cond_5

    :cond_1
    const/4 v4, 0x1

    move v6, v4

    .line 1444
    :goto_2
    if-eqz v7, :cond_6

    .line 1445
    const/high16 v2, 0x4000

    .line 1452
    :cond_2
    :goto_3
    iget v4, v0, Landroid/support/v4/view/bj;->width:I

    const/4 v11, -0x2

    if-eq v4, v11, :cond_e

    .line 1453
    const/high16 v4, 0x4000

    .line 1454
    iget v2, v0, Landroid/support/v4/view/bj;->width:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_d

    .line 1455
    iget v2, v0, Landroid/support/v4/view/bj;->width:I

    .line 1458
    :goto_4
    iget v11, v0, Landroid/support/v4/view/bj;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_c

    .line 1459
    const/high16 v1, 0x4000

    .line 1460
    iget v11, v0, Landroid/support/v4/view/bj;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    .line 1461
    iget v0, v0, Landroid/support/v4/view/bj;->height:I

    .line 1464
    :goto_5
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1465
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1466
    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1468
    if-eqz v7, :cond_7

    .line 1469
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    .line 1432
    :cond_3
    :goto_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1441
    :cond_4
    const/4 v4, 0x0

    move v7, v4

    goto :goto_1

    .line 1442
    :cond_5
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    .line 1446
    :cond_6
    if-eqz v6, :cond_2

    .line 1447
    const/high16 v1, 0x4000

    goto :goto_3

    .line 1470
    :cond_7
    if-eqz v6, :cond_3

    .line 1471
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_6

    .line 1477
    :cond_8
    const/high16 v0, 0x4000

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->w:I

    .line 1478
    const/high16 v0, 0x4000

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->x:I

    .line 1481
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->y:Z

    .line 1482
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 1483
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->y:Z

    .line 1486
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1487
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_b

    .line 1488
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1489
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_a

    .line 1493
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    .line 1494
    if-eqz v0, :cond_9

    iget-boolean v5, v0, Landroid/support/v4/view/bj;->a:Z

    if-nez v5, :cond_a

    .line 1495
    :cond_9
    int-to-float v5, v3

    iget v0, v0, Landroid/support/v4/view/bj;->c:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x4000

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1497
    iget v5, p0, Landroid/support/v4/view/ViewPager;->x:I

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 1487
    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1501
    :cond_b
    return-void

    :cond_c
    move v0, v5

    goto :goto_5

    :cond_d
    move v2, v3

    goto/16 :goto_4

    :cond_e
    move v4, v2

    move v2, v3

    goto/16 :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 2716
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 2717
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_0

    move v3, v0

    move v4, v1

    .line 2726
    :goto_0
    if-eq v4, v2, :cond_2

    .line 2727
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2728
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2729
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v6

    .line 2730
    if-eqz v6, :cond_1

    iget v6, v6, Landroid/support/v4/view/bi;->b:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-ne v6, v7, :cond_1

    .line 2731
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2737
    :goto_1
    return v0

    .line 2722
    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    move v2, v3

    .line 2724
    goto :goto_0

    .line 2726
    :cond_1
    add-int/2addr v4, v3

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2737
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1318
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1319
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1334
    .end local p1
    :goto_0
    return-void

    .line 1323
    .restart local p1
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    .line 1324
    .end local p1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1326
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_1

    .line 1327
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    .line 1328
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_0

    .line 1330
    :cond_1
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->l:I

    .line 1331
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/os/Parcelable;

    .line 1332
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->n:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1307
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1308
    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1309
    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    .line 1310
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    .line 1313
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1505
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1508
    if-eq p1, p3, :cond_0

    .line 1509
    iget v0, p0, Landroid/support/v4/view/ViewPager;->q:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->q:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IIII)V

    .line 1511
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1974
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->S:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 2092
    :goto_0
    return v0

    .line 1981
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 1984
    goto :goto_0

    .line 1987
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->c()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    .line 1989
    goto :goto_0

    .line 1992
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 1993
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    .line 1995
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1997
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2000
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2089
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v2, :cond_6

    .line 2090
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    :cond_6
    move v0, v1

    .line 2092
    goto :goto_0

    .line 2002
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2003
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z

    .line 2004
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 2005
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ab:Z

    if-eqz v0, :cond_7

    .line 2006
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->D:Z

    .line 2007
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2011
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    .line 2012
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->L:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->J:F

    .line 2013
    invoke-static {p1, v2}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    goto :goto_1

    .line 2017
    :pswitch_2
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->D:Z

    if-nez v0, :cond_8

    .line 2018
    iget v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 2019
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 2020
    iget v4, p0, Landroid/support/v4/view/ViewPager;->I:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2021
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 2022
    iget v0, p0, Landroid/support/v4/view/ViewPager;->J:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2024
    iget v6, p0, Landroid/support/v4/view/ViewPager;->H:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_8

    cmpl-float v0, v4, v0

    if-lez v0, :cond_8

    .line 2026
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->D:Z

    .line 2027
    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    sub-float v0, v3, v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->H:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_2
    iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    .line 2029
    iput v5, p0, Landroid/support/v4/view/ViewPager;->J:F

    .line 2030
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2031
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2035
    :cond_8
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->D:Z

    if-eqz v0, :cond_5

    .line 2037
    iget v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 2039
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 2040
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(F)Z

    move-result v0

    or-int/lit8 v2, v0, 0x0

    .line 2041
    goto/16 :goto_1

    .line 2027
    :cond_9
    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->H:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_2

    .line 2044
    :pswitch_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->D:Z

    if-eqz v0, :cond_5

    .line 2045
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    .line 2046
    const/16 v2, 0x3e8

    iget v3, p0, Landroid/support/v4/view/ViewPager;->P:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2047
    iget v2, p0, Landroid/support/v4/view/ViewPager;->M:I

    invoke-static {v0, v2}, Landroid/support/v4/view/af;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 2049
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->A:Z

    .line 2050
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 2051
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 2052
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()Landroid/support/v4/view/bi;

    move-result-object v4

    .line 2053
    iget v5, v4, Landroid/support/v4/view/bi;->b:I

    .line 2054
    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, v4, Landroid/support/v4/view/bi;->e:F

    sub-float/2addr v2, v3

    iget v3, v4, Landroid/support/v4/view/bi;->d:F

    div-float/2addr v2, v3

    .line 2055
    iget v3, p0, Landroid/support/v4/view/ViewPager;->M:I

    invoke-static {p1, v3}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 2057
    invoke-static {p1, v3}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 2058
    iget v4, p0, Landroid/support/v4/view/ViewPager;->K:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 2059
    invoke-direct {p0, v5, v2, v0, v3}, Landroid/support/v4/view/ViewPager;->a(IFII)I

    move-result v2

    .line 2061
    invoke-direct {p0, v2, v1, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 2063
    iput v6, p0, Landroid/support/v4/view/ViewPager;->M:I

    .line 2064
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    .line 2065
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    invoke-virtual {v0}, Landroid/support/v4/widget/e;->c()Z

    move-result v0

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    invoke-virtual {v2}, Landroid/support/v4/widget/e;->c()Z

    move-result v2

    or-int/2addr v2, v0

    .line 2066
    goto/16 :goto_1

    .line 2069
    :pswitch_4
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->D:Z

    if-eqz v0, :cond_5

    .line 2070
    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    .line 2071
    iput v6, p0, Landroid/support/v4/view/ViewPager;->M:I

    .line 2072
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    .line 2073
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    invoke-virtual {v0}, Landroid/support/v4/widget/e;->c()Z

    move-result v0

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    invoke-virtual {v2}, Landroid/support/v4/widget/e;->c()Z

    move-result v2

    or-int/2addr v2, v0

    goto/16 :goto_1

    .line 2077
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2078
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 2079
    iput v3, p0, Landroid/support/v4/view/ViewPager;->I:F

    .line 2080
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    goto/16 :goto_1

    .line 2084
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    .line 2085
    iget v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    goto/16 :goto_1

    .line 2000
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1364
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->y:Z

    if-eqz v0, :cond_0

    .line 1365
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1369
    :goto_0
    return-void

    .line 1367
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/ae;)V
    .locals 7
    .parameter "adapter"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 423
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->p:Landroid/support/v4/view/bo;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ae;->b(Landroid/database/DataSetObserver;)V

    .line 425
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->a()V

    move v1, v2

    .line 426
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    .line 428
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget v4, v0, Landroid/support/v4/view/bi;->b:I

    iget-object v0, v0, Landroid/support/v4/view/bi;->a:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ae;->a(Ljava/lang/Object;)V

    .line 426
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 430
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->b()V

    .line 431
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 432
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 433
    iput v2, p0, Landroid/support/v4/view/ViewPager;->k:I

    .line 434
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 437
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    .line 438
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    .line 439
    iput v2, p0, Landroid/support/v4/view/ViewPager;->b:I

    .line 441
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v1, :cond_3

    .line 442
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->p:Landroid/support/v4/view/bo;

    if-nez v1, :cond_2

    .line 443
    new-instance v1, Landroid/support/v4/view/bo;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/view/bo;-><init>(Landroid/support/v4/view/ViewPager;B)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->p:Landroid/support/v4/view/bo;

    .line 445
    :cond_2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->p:Landroid/support/v4/view/bo;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ae;->a(Landroid/database/DataSetObserver;)V

    .line 446
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z

    .line 447
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->V:Z

    .line 448
    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->V:Z

    .line 449
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v3}, Landroid/support/v4/view/ae;->c()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->b:I

    .line 450
    iget v3, p0, Landroid/support/v4/view/ViewPager;->l:I

    if-ltz v3, :cond_5

    .line 451
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/os/Parcelable;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->n:Ljava/lang/ClassLoader;

    .line 452
    iget v1, p0, Landroid/support/v4/view/ViewPager;->l:I

    invoke-direct {p0, v1, v2, v5}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 453
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->l:I

    .line 454
    iput-object v6, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/os/Parcelable;

    .line 455
    iput-object v6, p0, Landroid/support/v4/view/ViewPager;->n:Ljava/lang/ClassLoader;

    .line 463
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ae:Landroid/support/v4/view/bl;

    if-eqz v1, :cond_4

    if-eq v0, p1, :cond_4

    .line 464
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ae:Landroid/support/v4/view/bl;

    .line 466
    :cond_4
    return-void

    .line 456
    :cond_5
    if-nez v1, :cond_6

    .line 457
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()V

    goto :goto_1

    .line 459
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 645
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 646
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ag:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 648
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "setChildrenDrawingOrderEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ag:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ag:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 660
    :cond_1
    :goto_1
    return-void

    .line 650
    :catch_0
    move-exception v0

    .line 651
    const-string v1, "ViewPager"

    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 656
    :catch_1
    move-exception v0

    .line 657
    const-string v1, "ViewPager"

    const-string v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 504
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->A:Z

    .line 505
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->V:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 506
    return-void

    :cond_0
    move v0, v1

    .line 505
    goto :goto_0
.end method

.method protected setIgnoreTouchSlop(Z)V
    .locals 0
    .parameter "ignoreTouchSlop"

    .prologue
    .line 393
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->ab:Z

    .line 394
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 2
    .parameter "limit"

    .prologue
    .line 710
    if-gtz p1, :cond_0

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requested offscreen page limit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " too small; defaulting to 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    const/4 p1, 0x1

    .line 715
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-eq p1, v0, :cond_1

    .line 716
    iput p1, p0, Landroid/support/v4/view/ViewPager;->B:I

    .line 717
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 719
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Landroid/support/v4/view/bl;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 489
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->ae:Landroid/support/v4/view/bl;

    .line 490
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/bm;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 614
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    .line 615
    return-void
.end method

.method public setOnlyCreatePagesImmediatelyOffscreen(Z)V
    .locals 1
    .parameter "onlyCreateImmediateOffscreenPages"

    .prologue
    .line 731
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->C:Z

    if-eq p1, v0, :cond_0

    .line 732
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->C:Z

    .line 733
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 735
    :cond_0
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .parameter "marginPixels"

    .prologue
    .line 746
    iget v0, p0, Landroid/support/v4/view/ViewPager;->q:I

    .line 747
    iput p1, p0, Landroid/support/v4/view/ViewPager;->q:I

    .line 749
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 750
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->a(IIII)V

    .line 752
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 753
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 782
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 783
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 770
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->r:Landroid/graphics/drawable/Drawable;

    .line 771
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    .line 772
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 773
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 774
    return-void

    .line 772
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 787
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->r:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
