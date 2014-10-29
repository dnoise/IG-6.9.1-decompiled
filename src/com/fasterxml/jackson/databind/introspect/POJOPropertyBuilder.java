// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyName;

// Referenced classes of package com.fasterxml.jackson.databind.introspect:
//            BeanPropertyDefinition, AnnotatedMember, AnnotationMap, ObjectIdInfo, 
//            AnnotatedParameter, AnnotatedConstructor, AnnotatedField, AnnotatedMethod

public class POJOPropertyBuilder extends BeanPropertyDefinition
    implements Comparable
{

    protected final AnnotationIntrospector _annotationIntrospector;
    protected Linked _ctorParameters;
    protected Linked _fields;
    protected final boolean _forSerialization;
    protected Linked _getters;
    protected final String _internalName;
    protected final String _name;
    protected Linked _setters;

    public POJOPropertyBuilder(POJOPropertyBuilder pojopropertybuilder, String s)
    {
        _internalName = pojopropertybuilder._internalName;
        _name = s;
        _annotationIntrospector = pojopropertybuilder._annotationIntrospector;
        _fields = pojopropertybuilder._fields;
        _ctorParameters = pojopropertybuilder._ctorParameters;
        _getters = pojopropertybuilder._getters;
        _setters = pojopropertybuilder._setters;
        _forSerialization = pojopropertybuilder._forSerialization;
    }

    public POJOPropertyBuilder(String s, AnnotationIntrospector annotationintrospector, boolean flag)
    {
        _internalName = s;
        _name = s;
        _annotationIntrospector = annotationintrospector;
        _forSerialization = flag;
    }

    private boolean _anyExplicitNames(Linked linked)
    {
        for (; linked != null; linked = linked.next)
        {
            if (linked.explicitName != null && linked.explicitName.length() > 0)
            {
                return true;
            }
        }

        return false;
    }

    private boolean _anyIgnorals(Linked linked)
    {
        for (; linked != null; linked = linked.next)
        {
            if (linked.isMarkedIgnored)
            {
                return true;
            }
        }

        return false;
    }

    private boolean _anyVisible(Linked linked)
    {
        for (; linked != null; linked = linked.next)
        {
            if (linked.isVisible)
            {
                return true;
            }
        }

        return false;
    }

    private transient AnnotationMap _mergeAnnotations(int i, Linked alinked[])
    {
        AnnotationMap annotationmap = ((AnnotatedMember)alinked[i].value).getAllAnnotations();
        int j = i + 1;
        do
        {
label0:
            {
                if (j < alinked.length)
                {
                    if (alinked[j] == null)
                    {
                        break label0;
                    }
                    annotationmap = AnnotationMap.merge(annotationmap, _mergeAnnotations(j, alinked));
                }
                return annotationmap;
            }
            j++;
        } while (true);
    }

    private Linked _removeIgnored(Linked linked)
    {
        if (linked == null)
        {
            return linked;
        } else
        {
            return linked.withoutIgnored();
        }
    }

    private Linked _removeNonVisible(Linked linked)
    {
        if (linked == null)
        {
            return linked;
        } else
        {
            return linked.withoutNonVisible();
        }
    }

    private Linked _trimByVisibility(Linked linked)
    {
        if (linked == null)
        {
            return linked;
        } else
        {
            return linked.trimByVisibility();
        }
    }

    private Linked findRenamed(Linked linked, Linked linked1)
    {
_L2:
        String s;
        if (linked == null)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        s = linked.explicitName;
        if (s != null && !s.equals(_name))
        {
            if (linked1 != null)
            {
                break; /* Loop/switch isn't completed */
            }
            linked1 = linked;
        }
_L4:
        linked = linked.next;
        if (true) goto _L2; else goto _L1
_L1:
        if (s.equals(linked1.explicitName)) goto _L4; else goto _L3
_L3:
        throw new IllegalStateException((new StringBuilder("Conflicting property name definitions: '")).append(linked1.explicitName).append("' (for ").append(linked1.value).append(") vs '").append(linked.explicitName).append("' (for ").append(linked.value).append(")").toString());
        return linked1;
    }

    private static Linked merge(Linked linked, Linked linked1)
    {
        if (linked == null)
        {
            return linked1;
        }
        if (linked1 == null)
        {
            return linked;
        } else
        {
            return linked.append(linked1);
        }
    }

    public void addAll(POJOPropertyBuilder pojopropertybuilder)
    {
        _fields = merge(_fields, pojopropertybuilder._fields);
        _ctorParameters = merge(_ctorParameters, pojopropertybuilder._ctorParameters);
        _getters = merge(_getters, pojopropertybuilder._getters);
        _setters = merge(_setters, pojopropertybuilder._setters);
    }

    public void addCtor(AnnotatedParameter annotatedparameter, String s, boolean flag, boolean flag1)
    {
        _ctorParameters = new Linked(annotatedparameter, _ctorParameters, s, flag, flag1);
    }

    public void addField(AnnotatedField annotatedfield, String s, boolean flag, boolean flag1)
    {
        _fields = new Linked(annotatedfield, _fields, s, flag, flag1);
    }

    public void addGetter(AnnotatedMethod annotatedmethod, String s, boolean flag, boolean flag1)
    {
        _getters = new Linked(annotatedmethod, _getters, s, flag, flag1);
    }

    public void addSetter(AnnotatedMethod annotatedmethod, String s, boolean flag, boolean flag1)
    {
        _setters = new Linked(annotatedmethod, _setters, s, flag, flag1);
    }

    public boolean anyIgnorals()
    {
        return _anyIgnorals(_fields) || _anyIgnorals(_getters) || _anyIgnorals(_setters) || _anyIgnorals(_ctorParameters);
    }

    public boolean anyVisible()
    {
        return _anyVisible(_fields) || _anyVisible(_getters) || _anyVisible(_setters) || _anyVisible(_ctorParameters);
    }

    public int compareTo(POJOPropertyBuilder pojopropertybuilder)
    {
        if (_ctorParameters != null)
        {
            if (pojopropertybuilder._ctorParameters == null)
            {
                return -1;
            }
        } else
        if (pojopropertybuilder._ctorParameters != null)
        {
            return 1;
        }
        return getName().compareTo(pojopropertybuilder.getName());
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((POJOPropertyBuilder)obj);
    }

    public boolean couldSerialize()
    {
        return _getters != null || _fields != null;
    }

    public String findNewName()
    {
        Linked linked = findRenamed(_fields, null);
        Linked linked1 = findRenamed(_getters, linked);
        Linked linked2 = findRenamed(_setters, linked1);
        Linked linked3 = findRenamed(_ctorParameters, linked2);
        if (linked3 == null)
        {
            return null;
        } else
        {
            return linked3.explicitName;
        }
    }

    public ObjectIdInfo findObjectIdInfo()
    {
        return (ObjectIdInfo)fromMemberAnnotations(new _cls5());
    }

    public com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty findReferenceType()
    {
        return (com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty)fromMemberAnnotations(new _cls2());
    }

    public Class[] findViews()
    {
        return (Class[])fromMemberAnnotations(new _cls1());
    }

    protected Object fromMemberAnnotations(WithMember withmember)
    {
        AnnotationIntrospector annotationintrospector;
        Object obj;
        annotationintrospector = _annotationIntrospector;
        obj = null;
        if (annotationintrospector == null) goto _L2; else goto _L1
_L1:
        if (!_forSerialization) goto _L4; else goto _L3
_L3:
        Linked linked1 = _getters;
        obj = null;
        if (linked1 != null)
        {
            obj = withmember.withMember((AnnotatedMember)_getters.value);
        }
_L6:
        if (obj == null && _fields != null)
        {
            obj = withmember.withMember((AnnotatedMember)_fields.value);
        }
_L2:
        return obj;
_L4:
        Linked linked = _ctorParameters;
        obj = null;
        if (linked != null)
        {
            obj = withmember.withMember((AnnotatedMember)_ctorParameters.value);
        }
        if (obj == null && _setters != null)
        {
            obj = withmember.withMember((AnnotatedMember)_setters.value);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public AnnotatedMember getAccessor()
    {
        Object obj = getGetter();
        if (obj == null)
        {
            obj = getField();
        }
        return ((AnnotatedMember) (obj));
    }

    public AnnotatedParameter getConstructorParameter()
    {
        if (_ctorParameters == null)
        {
            return null;
        }
        Linked linked = _ctorParameters;
        do
        {
            if (((AnnotatedParameter)linked.value).getOwner() instanceof AnnotatedConstructor)
            {
                return (AnnotatedParameter)linked.value;
            }
            Linked linked1 = linked.next;
            if (linked1 == null)
            {
                return (AnnotatedParameter)_ctorParameters.value;
            }
            linked = linked1;
        } while (true);
    }

    public AnnotatedField getField()
    {
        if (_fields != null) goto _L2; else goto _L1
_L1:
        AnnotatedField annotatedfield1 = null;
_L4:
        return annotatedfield1;
_L2:
        Linked linked;
        AnnotatedField annotatedfield = (AnnotatedField)_fields.value;
        linked = _fields.next;
        annotatedfield1 = annotatedfield;
_L9:
        if (linked == null) goto _L4; else goto _L3
_L3:
        AnnotatedField annotatedfield2;
        Class class1;
        Class class2;
        annotatedfield2 = (AnnotatedField)linked.value;
        class1 = annotatedfield1.getDeclaringClass();
        class2 = annotatedfield2.getDeclaringClass();
        if (class1 == class2) goto _L6; else goto _L5
_L5:
        if (!class1.isAssignableFrom(class2)) goto _L8; else goto _L7
_L7:
        linked = linked.next;
        annotatedfield1 = annotatedfield2;
          goto _L9
_L8:
        if (class2.isAssignableFrom(class1))
        {
            break MISSING_BLOCK_LABEL_148;
        }
_L6:
        throw new IllegalArgumentException((new StringBuilder("Multiple fields representing property \"")).append(getName()).append("\": ").append(annotatedfield1.getFullName()).append(" vs ").append(annotatedfield2.getFullName()).toString());
        annotatedfield2 = annotatedfield1;
          goto _L7
    }

    public AnnotatedMethod getGetter()
    {
        if (_getters != null) goto _L2; else goto _L1
_L1:
        AnnotatedMethod annotatedmethod1 = null;
_L4:
        return annotatedmethod1;
_L2:
        Linked linked;
        AnnotatedMethod annotatedmethod = (AnnotatedMethod)_getters.value;
        linked = _getters.next;
        annotatedmethod1 = annotatedmethod;
_L9:
        if (linked == null) goto _L4; else goto _L3
_L3:
        AnnotatedMethod annotatedmethod2;
        Class class1;
        Class class2;
        annotatedmethod2 = (AnnotatedMethod)linked.value;
        class1 = annotatedmethod1.getDeclaringClass();
        class2 = annotatedmethod2.getDeclaringClass();
        if (class1 == class2) goto _L6; else goto _L5
_L5:
        if (!class1.isAssignableFrom(class2)) goto _L8; else goto _L7
_L7:
        linked = linked.next;
        annotatedmethod1 = annotatedmethod2;
          goto _L9
_L8:
        if (class2.isAssignableFrom(class1))
        {
            break MISSING_BLOCK_LABEL_148;
        }
_L6:
        throw new IllegalArgumentException((new StringBuilder("Conflicting getter definitions for property \"")).append(getName()).append("\": ").append(annotatedmethod1.getFullName()).append(" vs ").append(annotatedmethod2.getFullName()).toString());
        annotatedmethod2 = annotatedmethod1;
          goto _L7
    }

    public String getInternalName()
    {
        return _internalName;
    }

    public AnnotatedMember getMutator()
    {
        Object obj = getConstructorParameter();
        if (obj == null)
        {
            obj = getSetter();
            if (obj == null)
            {
                obj = getField();
            }
        }
        return ((AnnotatedMember) (obj));
    }

    public String getName()
    {
        return _name;
    }

    public AnnotatedMember getPrimaryMember()
    {
        if (_forSerialization)
        {
            return getAccessor();
        } else
        {
            return getMutator();
        }
    }

    public AnnotatedMethod getSetter()
    {
        if (_setters != null) goto _L2; else goto _L1
_L1:
        AnnotatedMethod annotatedmethod1 = null;
_L4:
        return annotatedmethod1;
_L2:
        Linked linked;
        AnnotatedMethod annotatedmethod = (AnnotatedMethod)_setters.value;
        linked = _setters.next;
        annotatedmethod1 = annotatedmethod;
_L9:
        if (linked == null) goto _L4; else goto _L3
_L3:
        AnnotatedMethod annotatedmethod2;
        Class class1;
        Class class2;
        annotatedmethod2 = (AnnotatedMethod)linked.value;
        class1 = annotatedmethod1.getDeclaringClass();
        class2 = annotatedmethod2.getDeclaringClass();
        if (class1 == class2) goto _L6; else goto _L5
_L5:
        if (!class1.isAssignableFrom(class2)) goto _L8; else goto _L7
_L7:
        linked = linked.next;
        annotatedmethod1 = annotatedmethod2;
          goto _L9
_L8:
        if (class2.isAssignableFrom(class1))
        {
            break MISSING_BLOCK_LABEL_149;
        }
_L6:
        throw new IllegalArgumentException((new StringBuilder("Conflicting setter definitions for property \"")).append(getName()).append("\": ").append(annotatedmethod1.getFullName()).append(" vs ").append(annotatedmethod2.getFullName()).toString());
        annotatedmethod2 = annotatedmethod1;
          goto _L7
    }

    public PropertyName getWrapperName()
    {
        AnnotatedMember annotatedmember = getPrimaryMember();
        if (annotatedmember == null || _annotationIntrospector == null)
        {
            return null;
        } else
        {
            return _annotationIntrospector.findWrapperName(annotatedmember);
        }
    }

    public boolean hasConstructorParameter()
    {
        return _ctorParameters != null;
    }

    public boolean hasField()
    {
        return _fields != null;
    }

    public boolean hasGetter()
    {
        return _getters != null;
    }

    public boolean hasSetter()
    {
        return _setters != null;
    }

    public boolean isExplicitlyIncluded()
    {
        return _anyExplicitNames(_fields) || _anyExplicitNames(_getters) || _anyExplicitNames(_setters) || _anyExplicitNames(_ctorParameters);
    }

    public boolean isRequired()
    {
        Boolean boolean1 = (Boolean)fromMemberAnnotations(new _cls4());
        return boolean1 != null && boolean1.booleanValue();
    }

    public boolean isTypeId()
    {
        Boolean boolean1 = (Boolean)fromMemberAnnotations(new _cls3());
        return boolean1 != null && boolean1.booleanValue();
    }

    public void mergeAnnotations(boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        if (_getters == null) goto _L4; else goto _L3
_L3:
        Linked alinked4[] = new Linked[4];
        alinked4[0] = _getters;
        alinked4[1] = _fields;
        alinked4[2] = _ctorParameters;
        alinked4[3] = _setters;
        AnnotationMap annotationmap4 = _mergeAnnotations(0, alinked4);
        _getters = _getters.withValue(((AnnotatedMethod)_getters.value).withAnnotations(annotationmap4));
_L6:
        return;
_L4:
        if (_fields != null)
        {
            Linked alinked3[] = new Linked[3];
            alinked3[0] = _fields;
            alinked3[1] = _ctorParameters;
            alinked3[2] = _setters;
            AnnotationMap annotationmap3 = _mergeAnnotations(0, alinked3);
            _fields = _fields.withValue(((AnnotatedField)_fields.value).withAnnotations(annotationmap3));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (_ctorParameters != null)
        {
            Linked alinked2[] = new Linked[4];
            alinked2[0] = _ctorParameters;
            alinked2[1] = _setters;
            alinked2[2] = _fields;
            alinked2[3] = _getters;
            AnnotationMap annotationmap2 = _mergeAnnotations(0, alinked2);
            _ctorParameters = _ctorParameters.withValue(((AnnotatedParameter)_ctorParameters.value).withAnnotations(annotationmap2));
            return;
        }
        if (_setters != null)
        {
            Linked alinked1[] = new Linked[3];
            alinked1[0] = _setters;
            alinked1[1] = _fields;
            alinked1[2] = _getters;
            AnnotationMap annotationmap1 = _mergeAnnotations(0, alinked1);
            _setters = _setters.withValue(((AnnotatedMethod)_setters.value).withAnnotations(annotationmap1));
            return;
        }
        if (_fields != null)
        {
            Linked alinked[] = new Linked[2];
            alinked[0] = _fields;
            alinked[1] = _getters;
            AnnotationMap annotationmap = _mergeAnnotations(0, alinked);
            _fields = _fields.withValue(((AnnotatedField)_fields.value).withAnnotations(annotationmap));
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void removeIgnored()
    {
        _fields = _removeIgnored(_fields);
        _getters = _removeIgnored(_getters);
        _setters = _removeIgnored(_setters);
        _ctorParameters = _removeIgnored(_ctorParameters);
    }

    public void removeNonVisible()
    {
        removeNonVisible(false);
    }

    public void removeNonVisible(boolean flag)
    {
        _getters = _removeNonVisible(_getters);
        _ctorParameters = _removeNonVisible(_ctorParameters);
        if (flag || _getters == null)
        {
            _fields = _removeNonVisible(_fields);
            _setters = _removeNonVisible(_setters);
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("[Property '").append(_name).append("'; ctors: ").append(_ctorParameters).append(", field(s): ").append(_fields).append(", getter(s): ").append(_getters).append(", setter(s): ").append(_setters);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    public void trimByVisibility()
    {
        _fields = _trimByVisibility(_fields);
        _getters = _trimByVisibility(_getters);
        _setters = _trimByVisibility(_setters);
        _ctorParameters = _trimByVisibility(_ctorParameters);
    }

    public volatile BeanPropertyDefinition withName(String s)
    {
        return withName(s);
    }

    public POJOPropertyBuilder withName(String s)
    {
        return new POJOPropertyBuilder(this, s);
    }

    private class Linked
    {

        public final String explicitName;
        public final boolean isMarkedIgnored;
        public final boolean isVisible;
        public final Linked next;
        public final Object value;

        private Linked append(Linked linked)
        {
            if (next == null)
            {
                return withNext(linked);
            } else
            {
                return withNext(next.append(linked));
            }
        }

        public final String toString()
        {
            String s = (new StringBuilder()).append(value.toString()).append("[visible=").append(isVisible).append("]").toString();
            if (next != null)
            {
                s = (new StringBuilder()).append(s).append(", ").append(next.toString()).toString();
            }
            return s;
        }

        public final Linked trimByVisibility()
        {
            if (next == null)
            {
                return this;
            }
            Linked linked = next.trimByVisibility();
            if (explicitName != null)
            {
                if (linked.explicitName == null)
                {
                    return withNext(null);
                } else
                {
                    return withNext(linked);
                }
            }
            if (linked.explicitName != null)
            {
                return linked;
            }
            if (isVisible == linked.isVisible)
            {
                return withNext(linked);
            }
            if (isVisible)
            {
                return withNext(null);
            } else
            {
                return linked;
            }
        }

        public final Linked withNext(Linked linked)
        {
            if (linked == next)
            {
                return this;
            } else
            {
                return new Linked(value, linked, explicitName, isVisible, isMarkedIgnored);
            }
        }

        public final Linked withValue(Object obj)
        {
            if (obj == value)
            {
                return this;
            } else
            {
                return new Linked(obj, next, explicitName, isVisible, isMarkedIgnored);
            }
        }

        public final Linked withoutIgnored()
        {
            if (!isMarkedIgnored) goto _L2; else goto _L1
_L1:
            if (next != null) goto _L4; else goto _L3
_L3:
            this = null;
_L6:
            return this;
_L4:
            return next.withoutIgnored();
_L2:
            if (next != null)
            {
                Linked linked = next.withoutIgnored();
                if (linked != next)
                {
                    return withNext(linked);
                }
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        public final Linked withoutNonVisible()
        {
            Linked linked;
            if (next == null)
            {
                linked = null;
            } else
            {
                linked = next.withoutNonVisible();
            }
            if (isVisible)
            {
                linked = withNext(linked);
            }
            return linked;
        }


        public Linked(Object obj, Linked linked, String s, boolean flag, boolean flag1)
        {
            value = obj;
            next = linked;
            Linked linked1;
            if (s == null)
            {
                s = null;
                linked1 = this;
            } else
            if (s.length() == 0)
            {
                linked1 = this;
                s = null;
            } else
            {
                linked1 = this;
            }
            linked1.explicitName = s;
            isVisible = flag;
            isMarkedIgnored = flag1;
        }
    }


    private class _cls5
        implements WithMember
    {

        final POJOPropertyBuilder this$0;

        public ObjectIdInfo withMember(AnnotatedMember annotatedmember)
        {
            ObjectIdInfo objectidinfo = _annotationIntrospector.findObjectIdInfo(annotatedmember);
            if (objectidinfo != null)
            {
                objectidinfo = _annotationIntrospector.findObjectReferenceInfo(annotatedmember, objectidinfo);
            }
            return objectidinfo;
        }

        public volatile Object withMember(AnnotatedMember annotatedmember)
        {
            return withMember(annotatedmember);
        }

        _cls5()
        {
            this$0 = POJOPropertyBuilder.this;
            super();
        }
    }


    private class _cls2
        implements WithMember
    {

        final POJOPropertyBuilder this$0;

        public com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty withMember(AnnotatedMember annotatedmember)
        {
            return _annotationIntrospector.findReferenceType(annotatedmember);
        }

        public volatile Object withMember(AnnotatedMember annotatedmember)
        {
            return withMember(annotatedmember);
        }

        _cls2()
        {
            this$0 = POJOPropertyBuilder.this;
            super();
        }
    }


    private class _cls1
        implements WithMember
    {

        final POJOPropertyBuilder this$0;

        public volatile Object withMember(AnnotatedMember annotatedmember)
        {
            return withMember(annotatedmember);
        }

        public Class[] withMember(AnnotatedMember annotatedmember)
        {
            return _annotationIntrospector.findViews(annotatedmember);
        }

        _cls1()
        {
            this$0 = POJOPropertyBuilder.this;
            super();
        }
    }


    private class WithMember
    {

        public abstract Object withMember(AnnotatedMember annotatedmember);
    }


    private class _cls4
        implements WithMember
    {

        final POJOPropertyBuilder this$0;

        public Boolean withMember(AnnotatedMember annotatedmember)
        {
            return _annotationIntrospector.hasRequiredMarker(annotatedmember);
        }

        public volatile Object withMember(AnnotatedMember annotatedmember)
        {
            return withMember(annotatedmember);
        }

        _cls4()
        {
            this$0 = POJOPropertyBuilder.this;
            super();
        }
    }


    private class _cls3
        implements WithMember
    {

        final POJOPropertyBuilder this$0;

        public Boolean withMember(AnnotatedMember annotatedmember)
        {
            return _annotationIntrospector.isTypeId(annotatedmember);
        }

        public volatile Object withMember(AnnotatedMember annotatedmember)
        {
            return withMember(annotatedmember);
        }

        _cls3()
        {
            this$0 = POJOPropertyBuilder.this;
            super();
        }
    }

}
