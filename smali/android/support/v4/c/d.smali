.class public final Landroid/support/v4/c/d;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/c/d;-><init>(B)V

    .line 32
    return-void
.end method

.method private constructor <init>(B)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Landroid/support/v4/c/d;->b:Z

    .line 54
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/support/v4/c/d;->j(I)I

    move-result v0

    .line 56
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/c/d;->c:[I

    .line 57
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    .line 58
    iput v2, p0, Landroid/support/v4/c/d;->e:I

    .line 59
    return-void
.end method

.method private static a([III)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    add-int/lit8 v2, p1, 0x0

    const/4 v0, -0x1

    move v1, v0

    move v0, v2

    .line 342
    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 343
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 345
    aget v3, p0, v2

    if-ge v3, p2, :cond_0

    move v1, v2

    .line 346
    goto :goto_0

    :cond_0
    move v0, v2

    .line 348
    goto :goto_0

    .line 351
    :cond_1
    add-int/lit8 v1, p1, 0x0

    if-ne v0, v1, :cond_3

    .line 352
    add-int/lit8 v0, p1, 0x0

    xor-int/lit8 v0, v0, -0x1

    .line 356
    :cond_2
    :goto_1
    return v0

    .line 353
    :cond_3
    aget v1, p0, v0

    if-eq v1, p2, :cond_2

    .line 356
    xor-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private c()Landroid/support/v4/c/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/c/d",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/d;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 130
    iget v3, p0, Landroid/support/v4/c/d;->e:I

    .line 132
    iget-object v4, p0, Landroid/support/v4/c/d;->c:[I

    .line 133
    iget-object v5, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 135
    :goto_0
    if-ge v1, v3, :cond_2

    .line 136
    aget-object v6, v5, v1

    .line 138
    sget-object v7, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 139
    if-eq v1, v0, :cond_0

    .line 140
    aget v7, v4, v1

    aput v7, v4, v0

    .line 141
    aput-object v6, v5, v0

    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 135
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_2
    iput-boolean v2, p0, Landroid/support/v4/c/d;->b:Z

    .line 149
    iput v0, p0, Landroid/support/v4/c/d;->e:I

    .line 152
    return-void
.end method

.method private g(I)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v4/c/d;->c:[I

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/d;->a([III)I

    move-result v0

    .line 76
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method private h(I)V
    .locals 3
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v4/c/d;->c:[I

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/d;->a([III)I

    move-result v0

    .line 89
    if-ltz v0, :cond_0

    .line 90
    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 91
    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/c/d;->b:Z

    .line 95
    :cond_0
    return-void
.end method

.method private static i(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 360
    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 361
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 362
    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    .line 364
    :cond_0
    return p0

    .line 360
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static j(I)I
    .locals 1
    .parameter

    .prologue
    .line 368
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/c/d;->i(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Landroid/support/v4/c/d;->b:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Landroid/support/v4/c/d;->d()V

    .line 215
    :cond_0
    iget v0, p0, Landroid/support/v4/c/d;->e:I

    return v0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/support/v4/c/d;->g(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 160
    iget-object v0, p0, Landroid/support/v4/c/d;->c:[I

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/d;->a([III)I

    move-result v0

    .line 162
    if-ltz v0, :cond_0

    .line 163
    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 204
    :goto_0
    return-void

    .line 165
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 167
    iget v1, p0, Landroid/support/v4/c/d;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 168
    iget-object v1, p0, Landroid/support/v4/c/d;->c:[I

    aput p1, v1, v0

    .line 169
    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0

    .line 173
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/c/d;->b:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    iget-object v2, p0, Landroid/support/v4/c/d;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 174
    invoke-direct {p0}, Landroid/support/v4/c/d;->d()V

    .line 177
    iget-object v0, p0, Landroid/support/v4/c/d;->c:[I

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/d;->a([III)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 180
    :cond_2
    iget v1, p0, Landroid/support/v4/c/d;->e:I

    iget-object v2, p0, Landroid/support/v4/c/d;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 181
    iget v1, p0, Landroid/support/v4/c/d;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/c/d;->j(I)I

    move-result v1

    .line 183
    new-array v2, v1, [I

    .line 184
    new-array v1, v1, [Ljava/lang/Object;

    .line 187
    iget-object v3, p0, Landroid/support/v4/c/d;->c:[I

    iget-object v4, p0, Landroid/support/v4/c/d;->c:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iget-object v3, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iput-object v2, p0, Landroid/support/v4/c/d;->c:[I

    .line 191
    iput-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    .line 194
    :cond_3
    iget v1, p0, Landroid/support/v4/c/d;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 196
    iget-object v1, p0, Landroid/support/v4/c/d;->c:[I

    iget-object v2, p0, Landroid/support/v4/c/d;->c:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/c/d;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/c/d;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    :cond_4
    iget-object v1, p0, Landroid/support/v4/c/d;->c:[I

    aput p1, v1, v0

    .line 201
    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 202
    iget v0, p0, Landroid/support/v4/c/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/d;->e:I

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 294
    iget v2, p0, Landroid/support/v4/c/d;->e:I

    .line 295
    iget-object v3, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    move v0, v1

    .line 297
    :goto_0
    if-ge v0, v2, :cond_0

    .line 298
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    iput v1, p0, Landroid/support/v4/c/d;->e:I

    .line 302
    iput-boolean v1, p0, Landroid/support/v4/c/d;->b:Z

    .line 303
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/support/v4/c/d;->h(I)V

    .line 102
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 310
    iget v0, p0, Landroid/support/v4/c/d;->e:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/c/d;->c:[I

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_0

    .line 311
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/c/d;->a(ILjava/lang/Object;)V

    .line 337
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/c/d;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/c/d;->e:I

    iget-object v1, p0, Landroid/support/v4/c/d;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 316
    invoke-direct {p0}, Landroid/support/v4/c/d;->d()V

    .line 319
    :cond_1
    iget v0, p0, Landroid/support/v4/c/d;->e:I

    .line 320
    iget-object v1, p0, Landroid/support/v4/c/d;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 321
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/support/v4/c/d;->j(I)I

    move-result v1

    .line 323
    new-array v2, v1, [I

    .line 324
    new-array v1, v1, [Ljava/lang/Object;

    .line 327
    iget-object v3, p0, Landroid/support/v4/c/d;->c:[I

    iget-object v4, p0, Landroid/support/v4/c/d;->c:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget-object v3, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iput-object v2, p0, Landroid/support/v4/c/d;->c:[I

    .line 331
    iput-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    .line 334
    :cond_2
    iget-object v1, p0, Landroid/support/v4/c/d;->c:[I

    aput p1, v1, v0

    .line 335
    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/d;->e:I

    goto :goto_0
.end method

.method public final c(I)V
    .locals 2
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/c/d;->b:Z

    .line 112
    :cond_0
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/c/d;->c()Landroid/support/v4/c/d;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)I
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-boolean v0, p0, Landroid/support/v4/c/d;->b:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Landroid/support/v4/c/d;->d()V

    .line 228
    :cond_0
    iget-object v0, p0, Landroid/support/v4/c/d;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 237
    iget-boolean v0, p0, Landroid/support/v4/c/d;->b:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Landroid/support/v4/c/d;->d()V

    .line 241
    :cond_0
    iget-object v0, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final f(I)I
    .locals 2
    .parameter

    .prologue
    .line 263
    iget-boolean v0, p0, Landroid/support/v4/c/d;->b:Z

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Landroid/support/v4/c/d;->d()V

    .line 267
    :cond_0
    iget-object v0, p0, Landroid/support/v4/c/d;->c:[I

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/d;->a([III)I

    move-result v0

    return v0
.end method
