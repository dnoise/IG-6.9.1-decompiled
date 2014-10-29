.class public Lcom/instagram/filterkit/b/e;
.super Ljava/lang/Object;
.source "IgGLShaderVariable.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:I


# instance fields
.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:I

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 9
    sput v1, Lcom/instagram/filterkit/b/e;->a:I

    .line 10
    sput v2, Lcom/instagram/filterkit/b/e;->b:I

    .line 11
    sput v3, Lcom/instagram/filterkit/b/e;->c:I

    .line 12
    sput v0, Lcom/instagram/filterkit/b/e;->d:I

    .line 13
    sput v1, Lcom/instagram/filterkit/b/e;->e:I

    .line 14
    sput v2, Lcom/instagram/filterkit/b/e;->f:I

    .line 15
    sput v3, Lcom/instagram/filterkit/b/e;->g:I

    .line 16
    sput v0, Lcom/instagram/filterkit/b/e;->h:I

    .line 17
    sput v1, Lcom/instagram/filterkit/b/e;->i:I

    .line 18
    sput v2, Lcom/instagram/filterkit/b/e;->j:I

    .line 19
    sput v3, Lcom/instagram/filterkit/b/e;->k:I

    .line 20
    sput v0, Lcom/instagram/filterkit/b/e;->l:I

    .line 21
    sput v0, Lcom/instagram/filterkit/b/e;->m:I

    .line 22
    const/16 v0, 0x9

    sput v0, Lcom/instagram/filterkit/b/e;->n:I

    .line 23
    const/16 v0, 0x10

    sput v0, Lcom/instagram/filterkit/b/e;->o:I

    .line 24
    sput v1, Lcom/instagram/filterkit/b/e;->p:I

    .line 25
    sput v1, Lcom/instagram/filterkit/b/e;->q:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/instagram/filterkit/b/e;->r:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/instagram/filterkit/b/e;->s:I

    .line 44
    iput p3, p0, Lcom/instagram/filterkit/b/e;->t:I

    .line 45
    iput p4, p0, Lcom/instagram/filterkit/b/e;->u:I

    .line 46
    iget v0, p0, Lcom/instagram/filterkit/b/e;->u:I

    invoke-static {v0}, Lcom/instagram/filterkit/b/e;->a(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/filterkit/b/e;->v:I

    .line 47
    return-void
.end method

.method private static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    sparse-switch p0, :sswitch_data_0

    .line 119
    :goto_0
    return v0

    .line 54
    :sswitch_0
    sget v0, Lcom/instagram/filterkit/b/e;->a:I

    goto :goto_0

    .line 58
    :sswitch_1
    sget v0, Lcom/instagram/filterkit/b/e;->b:I

    goto :goto_0

    .line 62
    :sswitch_2
    sget v0, Lcom/instagram/filterkit/b/e;->c:I

    goto :goto_0

    .line 66
    :sswitch_3
    sget v0, Lcom/instagram/filterkit/b/e;->d:I

    goto :goto_0

    .line 70
    :sswitch_4
    sget v0, Lcom/instagram/filterkit/b/e;->e:I

    goto :goto_0

    .line 74
    :sswitch_5
    sget v0, Lcom/instagram/filterkit/b/e;->f:I

    goto :goto_0

    .line 78
    :sswitch_6
    sget v0, Lcom/instagram/filterkit/b/e;->g:I

    goto :goto_0

    .line 82
    :sswitch_7
    sget v0, Lcom/instagram/filterkit/b/e;->h:I

    goto :goto_0

    .line 86
    :sswitch_8
    sget v0, Lcom/instagram/filterkit/b/e;->i:I

    goto :goto_0

    .line 90
    :sswitch_9
    sget v0, Lcom/instagram/filterkit/b/e;->j:I

    goto :goto_0

    .line 94
    :sswitch_a
    sget v0, Lcom/instagram/filterkit/b/e;->k:I

    goto :goto_0

    .line 98
    :sswitch_b
    sget v0, Lcom/instagram/filterkit/b/e;->l:I

    goto :goto_0

    .line 102
    :sswitch_c
    sget v0, Lcom/instagram/filterkit/b/e;->m:I

    goto :goto_0

    .line 106
    :sswitch_d
    sget v0, Lcom/instagram/filterkit/b/e;->n:I

    goto :goto_0

    .line 110
    :sswitch_e
    sget v0, Lcom/instagram/filterkit/b/e;->o:I

    goto :goto_0

    .line 114
    :sswitch_f
    sget v0, Lcom/instagram/filterkit/b/e;->p:I

    goto :goto_0

    .line 118
    :sswitch_10
    sget v0, Lcom/instagram/filterkit/b/e;->q:I

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x1404 -> :sswitch_4
        0x1406 -> :sswitch_0
        0x8b50 -> :sswitch_1
        0x8b51 -> :sswitch_2
        0x8b52 -> :sswitch_3
        0x8b53 -> :sswitch_5
        0x8b54 -> :sswitch_6
        0x8b55 -> :sswitch_7
        0x8b56 -> :sswitch_8
        0x8b57 -> :sswitch_9
        0x8b58 -> :sswitch_a
        0x8b59 -> :sswitch_b
        0x8b5a -> :sswitch_c
        0x8b5b -> :sswitch_d
        0x8b5c -> :sswitch_e
        0x8b5e -> :sswitch_f
        0x8b60 -> :sswitch_10
    .end sparse-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/instagram/filterkit/b/e;->s:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/instagram/filterkit/b/e;->u:I

    return v0
.end method
