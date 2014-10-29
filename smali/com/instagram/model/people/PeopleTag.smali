.class public Lcom/instagram/model/people/PeopleTag;
.super Ljava/lang/Object;
.source "PeopleTag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/instagram/user/c/a;

.field b:Landroid/graphics/PointF;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/instagram/model/people/a;

    invoke-direct {v0}, Lcom/instagram/model/people/a;-><init>()V

    sput-object v0, Lcom/instagram/model/people/PeopleTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->d:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->c:Ljava/lang/String;

    .line 152
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;

    .line 153
    iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 154
    iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/instagram/model/people/PeopleTag;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/instagram/user/c/a;Landroid/graphics/PointF;)V
    .locals 0
    .parameter "user"
    .parameter "position"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;

    .line 43
    invoke-direct {p0, p1}, Lcom/instagram/model/people/PeopleTag;->a(Lcom/instagram/user/c/a;)V

    .line 44
    return-void
.end method

.method static a(Lcom/fasterxml/jackson/a/l;)Landroid/graphics/PointF;
    .locals 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 58
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getFloatValue()F

    move-result v0

    .line 59
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 60
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getFloatValue()F

    move-result v1

    .line 61
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 62
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private a(Lcom/instagram/user/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->c:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->d:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method final a()Lcom/instagram/model/people/PeopleTag;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->c:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->d:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->a:Lcom/instagram/user/c/a;

    .line 53
    return-object p0
.end method

.method public final a(Landroid/graphics/PointF;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;

    .line 80
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/instagram/model/people/PeopleTag;->c:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public final b()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/instagram/model/people/PeopleTag;->d:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 110
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 116
    .end local p1
    :goto_0
    return v0

    .line 111
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/instagram/model/people/PeopleTag;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    check-cast p1, Lcom/instagram/model/people/PeopleTag;

    .line 116
    .end local p1
    invoke-virtual {p1}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/model/people/PeopleTag;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 134
    iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 135
    return-void
.end method
