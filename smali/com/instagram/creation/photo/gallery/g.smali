.class public final Lcom/instagram/creation/photo/gallery/g;
.super Ljava/lang/Object;
.source "ImageListUber.java"

# interfaces
.implements Lcom/instagram/creation/photo/gallery/d;


# instance fields
.field private final a:[Lcom/instagram/creation/photo/gallery/d;

.field private final b:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/instagram/creation/photo/gallery/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:[J

.field private d:I

.field private e:[I

.field private f:I


# direct methods
.method public constructor <init>([Lcom/instagram/creation/photo/gallery/d;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, [Lcom/instagram/creation/photo/gallery/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/creation/photo/gallery/d;

    iput-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;

    .line 55
    new-instance v2, Ljava/util/PriorityQueue;

    const/4 v3, 0x4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Lcom/instagram/creation/photo/gallery/h;

    invoke-direct {v0, v1}, Lcom/instagram/creation/photo/gallery/h;-><init>(B)V

    :goto_0
    invoke-direct {v2, v3, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->b:Ljava/util/PriorityQueue;

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->c:[J

    .line 60
    iput v1, p0, Lcom/instagram/creation/photo/gallery/g;->d:I

    .line 61
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->e:[I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/photo/gallery/g;->f:I

    .line 63
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 64
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;

    array-length v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    .line 65
    iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;

    aget-object v1, v1, v0

    .line 66
    new-instance v3, Lcom/instagram/creation/photo/gallery/j;

    invoke-direct {v3, v1, v0}, Lcom/instagram/creation/photo/gallery/j;-><init>(Lcom/instagram/creation/photo/gallery/d;I)V

    .line 67
    invoke-virtual {v3}, Lcom/instagram/creation/photo/gallery/j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_1
    new-instance v0, Lcom/instagram/creation/photo/gallery/i;

    invoke-direct {v0, v1}, Lcom/instagram/creation/photo/gallery/i;-><init>(B)V

    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method

.method private c()Lcom/instagram/creation/photo/gallery/j;
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    .line 144
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/gallery/j;

    .line 145
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    .line 146
    :cond_0
    iget v1, v0, Lcom/instagram/creation/photo/gallery/j;->a:I

    iget v2, p0, Lcom/instagram/creation/photo/gallery/g;->f:I

    if-ne v1, v2, :cond_1

    .line 147
    iget v1, p0, Lcom/instagram/creation/photo/gallery/g;->d:I

    add-int/lit8 v1, v1, -0x1

    .line 148
    iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->c:[J

    aget-wide v3, v2, v1

    add-long/2addr v3, v6

    aput-wide v3, v2, v1

    goto :goto_0

    .line 150
    :cond_1
    iget v1, v0, Lcom/instagram/creation/photo/gallery/j;->a:I

    iput v1, p0, Lcom/instagram/creation/photo/gallery/g;->f:I

    .line 151
    iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->c:[J

    array-length v1, v1

    iget v2, p0, Lcom/instagram/creation/photo/gallery/g;->d:I

    if-ne v1, v2, :cond_2

    .line 152
    iget v1, p0, Lcom/instagram/creation/photo/gallery/g;->d:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [J

    .line 153
    iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->c:[J

    iget v3, p0, Lcom/instagram/creation/photo/gallery/g;->d:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iput-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->c:[J

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->c:[J

    iget v2, p0, Lcom/instagram/creation/photo/gallery/g;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/instagram/creation/photo/gallery/g;->d:I

    iget v3, p0, Lcom/instagram/creation/photo/gallery/g;->f:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v3, v6

    aput-wide v3, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/instagram/creation/photo/gallery/c;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 100
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/gallery/g;->b()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range max is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/creation/photo/gallery/g;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->e:[I

    .line 108
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 118
    iget v3, p0, Lcom/instagram/creation/photo/gallery/g;->d:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_6

    .line 119
    iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->c:[J

    aget-wide v4, v2, v1

    .line 121
    const-wide/16 v6, -0x1

    and-long/2addr v6, v4

    long-to-int v6, v6

    .line 122
    const/16 v2, 0x20

    shr-long/2addr v4, v2

    long-to-int v4, v4

    .line 123
    add-int v2, v0, v6

    if-le v2, p1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->e:[I

    aget v1, v1, v4

    sub-int v0, p1, v0

    add-int/2addr v0, v1

    .line 125
    iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;

    aget-object v1, v1, v4

    invoke-interface {v1, v0}, Lcom/instagram/creation/photo/gallery/d;->a(I)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v0

    .line 137
    :cond_2
    :goto_1
    return-object v0

    .line 127
    :cond_3
    add-int v2, v0, v6

    .line 128
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->e:[I

    aget v5, v0, v4

    add-int/2addr v5, v6

    aput v5, v0, v4

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {v1}, Lcom/instagram/creation/photo/gallery/j;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 132
    :cond_6
    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/g;->c()Lcom/instagram/creation/photo/gallery/j;

    move-result-object v1

    .line 133
    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_1

    .line 134
    :cond_7
    if-ne v0, p1, :cond_4

    .line 135
    iget-object v0, v1, Lcom/instagram/creation/photo/gallery/j;->c:Lcom/instagram/creation/photo/gallery/c;

    .line 136
    invoke-virtual {v1}, Lcom/instagram/creation/photo/gallery/j;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/c;
    .locals 4
    .parameter

    .prologue
    .line 162
    iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 163
    invoke-interface {v0, p1}, Lcom/instagram/creation/photo/gallery/d;->a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 166
    :goto_1
    return-object v0

    .line 162
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 292
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 293
    iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/d;->a()V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 80
    .line 81
    iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 82
    invoke-interface {v4}, Lcom/instagram/creation/photo/gallery/d;->b()I

    move-result v4

    add-int/2addr v1, v4

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return v1
.end method
